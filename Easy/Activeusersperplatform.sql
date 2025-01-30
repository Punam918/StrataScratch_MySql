-- For each platform (e.g. Windows, iPhone, iPad etc.), calculate the number of users. Consider unique users and not individual sessions. Output the name of the platform with the corresponding number of users.

-- Table: user_sessions


SELECT 
    platform, 
    COUNT(DISTINCT user_id) AS num_users
FROM user_sessions
GROUP BY platform;
