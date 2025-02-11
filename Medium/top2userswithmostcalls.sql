-- Return the top 2 users in each company that called the most. Output the company_id, user_id, and the user's rank. If there are multiple users in the same rank, keep all of them.

-- Tables: rc_calls, rc_users
WITH totalcall AS (
    SELECT user_id, COUNT(call_id) AS totalcalls
    FROM rc_calls
    GROUP BY user_id
),
ranked_users AS (
    SELECT 
        u.user_id, 
        u.company_id, 
        t.totalcalls, 
        RANK() OVER (PARTITION BY u.company_id ORDER BY t.totalcalls DESC) AS rn
    FROM rc_users u 
    JOIN totalcall t ON u.user_id = t.user_id
)
SELECT user_id, company_id,totalcalls, rn
FROM ranked_users
WHERE rn <= 2
ORDER BY company_id, rn;