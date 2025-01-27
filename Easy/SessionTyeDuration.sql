SELECT 
    session_type,
    AVG(TIMESTAMPDIFF(SECOND, session_start, session_end)) AS avg_session_duration_seconds
FROM 
    twitch_sessions
GROUP BY 
    session_type;