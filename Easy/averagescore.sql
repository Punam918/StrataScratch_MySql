-- Find the mean of inspections scores between 91 and 100.
-- Assuming that the scores are normally distributed.

-- Table: los_angeles_restaurant_health_inspections
SELECT AVG(score) AS mean_score
FROM los_angeles_restaurant_health_inspections
WHERE score BETWEEN 91 AND 100;
