SELECT 
    F.location, 
    AVG(H.popularity) AS average_popularity
FROM 
    facebook_employees AS F
JOIN 
    facebook_hack_survey AS H
ON 
    F.id = H.employee_id
GROUP BY 
    F.location;