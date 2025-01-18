SELECT DISTINCT Name
FROM olympics_athletes_events
WHERE Team = 'Denmark'
  AND Medal IS NOT NULL;
