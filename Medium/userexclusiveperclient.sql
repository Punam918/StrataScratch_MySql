-- Considering a dataset that tracks user interactions with different clients, identify which clients have users who are exclusively loyal to them (i.e., they don't interact with any other clients).


-- For each of these clients, calculate the number of such exclusive users. The output should include the client_id and the corresponding count of exclusive users.

-- Table: fact_events

WITH user_client_counts AS (
    SELECT 
        user_id, 
        client_id, 
        COUNT(DISTINCT client_id) AS client_count
    FROM fact_events
    GROUP BY user_id, client_id
),
exclusive_users AS (
    SELECT user_id, client_id
    FROM user_client_counts
    GROUP BY user_id, client_id
    HAVING SUM(client_count) = 1  -- Ensures user interacts with only one client
)
SELECT 
    client_id, 
    COUNT(user_id) AS exclusive_user_count
FROM exclusive_users
GROUP BY client_id
ORDER BY exclusive_user_count DESC;

