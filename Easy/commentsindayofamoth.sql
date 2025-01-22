SELECT 
    DAY(post_date) AS day_of_month,
    COUNT(post_id) AS number_of_posts
FROM 
    facebook_posts
GROUP BY 
    DAY(post_date)
ORDER BY 
    day_of_month;
