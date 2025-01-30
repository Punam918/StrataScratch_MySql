
-- Count the number of users who made more than 5 searches in August 2021.

-- Table: fb_searches



SELECT COUNT(*) AS user_count
FROM (
    SELECT user_id
    FROM fb_searches
    WHERE date >= '2021-08-01' AND date < '2021-09-01'
    GROUP BY user_id
    HAVING COUNT(*) > 5
) AS filtered_users;