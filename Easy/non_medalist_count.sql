select concat(year," ", season) as O_games, count(*) as non_medalists_count from olympics_athletes_events
where medal IS NULL
GROUP BY 
    year, season
ORDER BY 
    non_medalists_count DESC
LIMIT 1;