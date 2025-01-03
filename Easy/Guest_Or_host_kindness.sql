WITH AverageScores AS (
    SELECT 
        'host' AS user_type, 
        AVG(review_score) AS avg_score
    FROM airbnb_reviews
    WHERE from_type = 'host'
    UNION ALL
    SELECT 
        'guest' AS user_type, 
        AVG(review_score) AS avg_score
    FROM airbnb_reviews
    WHERE from_type = 'guest'
)
SELECT 
    user_type AS higher_average_by, 
    ROUND(avg_score, 2) AS higher_average_score
FROM AverageScores
ORDER BY avg_score DESC
LIMIT 1;
