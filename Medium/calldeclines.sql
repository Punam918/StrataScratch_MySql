-- Which company had the biggest month call decline from March to April 2020? Return the company_id and calls difference for the company with the highest decline.

-- Tables: rc_calls, rc_users
WITH monthly_calls AS (
    SELECT 
        u.company_id,
        DATE_FORMAT(c.date, '%Y-%m') AS month,
        COUNT(c.call_id) AS total_calls
    FROM rc_calls c
    JOIN rc_users u ON c.user_id = u.user_id
    WHERE DATE_FORMAT(c.date, '%Y-%m') IN ('2020-03', '2020-04')
    GROUP BY u.company_id, month
),
pivot_calls AS (
    SELECT 
        company_id,
        MAX(CASE WHEN month = '2020-03' THEN total_calls ELSE 0 END) AS march_calls,
        MAX(CASE WHEN month = '2020-04' THEN total_calls ELSE 0 END) AS april_calls
    FROM monthly_calls
    GROUP BY company_id
)
SELECT 
    company_id,
    (march_calls - april_calls) AS calls_difference
FROM pivot_calls
ORDER BY calls_difference DESC
LIMIT 1;
