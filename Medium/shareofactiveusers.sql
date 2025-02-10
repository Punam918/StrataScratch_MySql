-- Output share of US users that are active. Active users are the ones with an "open" status in the table.

-- Table: fb_active_users

SELECT 
    COUNT(CASE WHEN status = 'open' THEN user_id END) * 1.0 / COUNT(user_id) AS active_user_share
FROM fb_active_users
WHERE country = 'USA';
