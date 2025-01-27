SELECT 
    client_id,
    YEAR(time_id) AS year,
    MONTH(time_id) AS month,
    COUNT(DISTINCT user_id) AS unique_users
FROM 
    fact_events
GROUP BY 
    client_id, YEAR(time_id), MONTH(time_id)
ORDER BY 
    client_id, year, month;
