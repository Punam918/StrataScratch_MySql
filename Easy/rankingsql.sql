WITH RankedQBs AS (
    SELECT
        qb AS quarterback,
        game_points,
        RANK() OVER (ORDER BY game_points DESC) AS rank
    FROM qbstats_2015_2016
    WHERE year = 2016
)
SELECT 
    rank,
    quarterback,
    game_points
FROM RankedQBs
WHERE rank <= 10
ORDER BY rank, quarterback;

SELECT 
    rank,
    quarterback,
    game_points
FROM (
    SELECT 
        qb AS quarterback,
        game_points,
        RANK() OVER (ORDER BY game_points DESC) AS rank
    FROM qbstats_2015_2016
    WHERE year = 2016
) AS RankedQBs
WHERE rank <= 10
ORDER BY rank, quarterback;
