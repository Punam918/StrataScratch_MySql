SELECT 
    quarterback,
    rate
FROM (
    SELECT 
        qb AS quarterback,
        rate,
        RANK() OVER (ORDER BY rate DESC) AS rank
    FROM qbstats_2015_2016
) AS RankedRatings
WHERE rank <= 10
ORDER BY rank, quarterback;