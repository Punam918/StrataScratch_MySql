-- Find the number of account registrations according to the signup date. Output the year months (YYYY-MM) and their corresponding number of registrations.

-- Table: noom_signups

SELECT 
    DATE_FORMAT(started_at, '%Y-%m') AS year_month,
    COUNT(*) AS num_registrations
FROM 
    noom_signups
GROUP BY 
    year_month
ORDER BY 
    year_month;