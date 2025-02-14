-- In a marathon, gun time is counted from the moment of the formal start of the race while net time is counted from the moment a runner crosses a starting line. Both variables are in seconds.
-- How much net time separates Chris Doe from the 10th best net time (in ascending order)? Avoid gaps in the ranking calculation. Output absolute net time difference.
-- Table: marathon_male

WITH RankedRunners AS (
    SELECT 
        person_name, 
        net_time, 
        DENSE_RANK() OVER (ORDER BY net_time ASC) AS ranking
    FROM marathon_male
)
SELECT 
    ABS(
        (SELECT MIN(net_time) FROM RankedRunners WHERE ranking = 10) - 
        (SELECT MIN(net_time) FROM RankedRunners WHERE person_name = 'Chris Doe')
    ) AS net_time_difference;
