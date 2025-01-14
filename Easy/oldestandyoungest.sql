WITH youngest_athlete AS (
    SELECT *
    FROM olympics_athletes_events
    WHERE age = (SELECT MIN(age) FROM olympics_athletes_events)
),
oldest_athlete AS (
    SELECT *
    FROM olympics_athletes_events
    WHERE age = (SELECT MAX(age) FROM olympics_athletes_events)
)
SELECT * FROM youngest_athlete
UNION ALL
SELECT * FROM oldest_athlete;