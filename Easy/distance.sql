-- Find the top 5 longest US flights by distance.
-- Output the result along with the corresponding origin, destination, and distance.
-- Sort the flights from longest to shortest.

-- Table: us_flights
SELECT origin, dest, distance
FROM us_flights
ORDER BY distance DESC
LIMIT 5;
