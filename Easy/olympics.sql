SELECT 
    name,
    GROUP_CONCAT(DISTINCT team ORDER BY team) AS teams,
    GROUP_CONCAT(DISTINCT games ORDER BY games) AS games,
    sport,
    GROUP_CONCAT(DISTINCT medal ORDER BY medal) AS medals
FROM olympics_athletes_events
GROUP BY name, sport
HAVING COUNT(team) > 1;