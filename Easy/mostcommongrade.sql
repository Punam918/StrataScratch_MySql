
-- Find the most common grade earned by bakeries.

-- Table: los_angeles_restaurant_health_inspections

SELECT grade, COUNT(*) AS grade_count
FROM los_angeles_restaurant_health_inspections
WHERE program_name like '%BAKERY%'
GROUP BY grade
ORDER BY grade_count DESC
LIMIT 1;