-- Find the hometowns with the top 3 average net times. Output the hometowns and their average net time. In case there are ties in net time, return all unique hometowns.

-- Table: marathon_male

WITH HometownAverages AS (
    SELECT 
        hometown, 
        AVG(net_time) AS avg_net_time
    FROM marathon_male
    GROUP BY hometown
),
RankedHometowns AS (
    SELECT 
        hometown, 
        avg_net_time,
        DENSE_RANK() OVER (ORDER BY avg_net_time DESC) AS ranking
    FROM HometownAverages
)
SELECT 
    hometown, 
    avg_net_time
FROM RankedHometowns
WHERE ranking <= 3;