SELECT 
    user_id
FROM 
    twitch_sessions
WHERE 
    session_type IN ('viewer', 'streamer')
GROUP BY 
    user_id
HAVING 
    SUM(session_type = 'viewer') > 0 
    AND SUM(session_type = 'streamer') > 0;
