-- List the top 3 users who accumulated the most sessions. Include only the user who had more streaming sessions than viewing. Return the user_id, number of streaming sessions, and number of viewing sessions.

-- Table: twitch_sessions
WITH session_counts AS (
    SELECT 
        user_id,
        SUM(CASE WHEN session_type = 'streaming' THEN 1 ELSE 0 END) AS streaming_sessions,
        SUM(CASE WHEN session_type = 'viewing' THEN 1 ELSE 0 END) AS viewing_sessions
    FROM twitch_sessions
    GROUP BY user_id
)

SELECT 
    user_id,
    streaming_sessions,
    viewing_sessions
FROM session_counts
WHERE streaming_sessions > viewing_sessions
ORDER BY (streaming_sessions + viewing_sessions) DESC
LIMIT 3;