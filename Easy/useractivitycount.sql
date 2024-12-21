SELECT  DISTINCT U.user_id, COUNT(activity_type) AS AT
FROM user_profiles U
JOIN activity_log L
ON U.user_id = L.user_id
GROUP BY U.user_id
ORDER BY U.user_id;