SELECT 
    account_id,
    COUNT(DISTINCT user_id) AS monthly_active_users
FROM 
    sf_events
WHERE 
    DATE >= '2021-01-01' AND DATE < '2021-02-01'
GROUP BY 
    account_id;
