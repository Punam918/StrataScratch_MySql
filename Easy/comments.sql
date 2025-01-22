SELECT 
    user_id, 
    SUM(number_of_comments) AS total_comments
FROM 
    fb_comments_count
WHERE 
    created_at BETWEEN '2020-01-10' AND '2020-02-10'
GROUP BY 
    user_id
HAVING 
    total_comments > 0;