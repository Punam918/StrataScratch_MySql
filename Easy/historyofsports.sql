SELECT 
    sport,
    MIN(year) AS first_year,
    MAX(year) AS last_year,
    COUNT(DISTINCT year) AS total_occasions
FROM 
    olympics_athletes_events
GROUP BY 
    sport
ORDER BY 
    MIN(year) DESC;
