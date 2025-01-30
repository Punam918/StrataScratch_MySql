-- Count the number of unique users per day who logged in from both a mobile device and web. Output the date and the corresponding number of users.

-- Tables: mobile_logs, web_logs
SELECT 
    m.date AS login_date,
    COUNT(DISTINCT m.user_id) AS unique_users
FROM 
    mobile_logs m
JOIN 
    web_logs w
ON 
    m.user_id = w.user_id AND m.date = w.date
GROUP BY 
    m.date
ORDER BY 
    m.date;