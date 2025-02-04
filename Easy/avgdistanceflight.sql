-- Find the average distance an airplane travels from each origin airport.
-- Output the result along with the corresponding origin.

-- Table: us_flights
SELECT origin, AVG(distance) AS avg_distance
FROM us_flights
WHERE cancelled = 0 
GROUP BY origin
ORDER BY avg_distance DESC;
