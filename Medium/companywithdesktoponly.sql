-- Write a query that returns the company (customer id column) with highest number of users that use desktop only.

-- Table: fact_events
WITH user_client_counts AS (
    SELECT 
        user_id, 
        customer_id, 
        COUNT(DISTINCT client_id) AS client_count,
        MAX(CASE WHEN client_id = 'desktop' THEN 1 ELSE 0 END) AS uses_desktop
    FROM fact_events
    GROUP BY user_id, customer_id
),
exclusive_desktop_users AS (
    SELECT customer_id, COUNT(user_id) AS desktop_user_count
    FROM user_client_counts
    WHERE client_count = 1 AND uses_desktop = 1  -- Users who ONLY use desktop
    GROUP BY customer_id
)
SELECT customer_id, desktop_user_count
FROM exclusive_desktop_users
ORDER BY desktop_user_count DESC
LIMIT 1;