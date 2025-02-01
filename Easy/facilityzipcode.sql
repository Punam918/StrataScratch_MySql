-- Find all facilities with the zip code 90049, 90034, or 90045.

-- Table: los_angeles_restaurant_health_inspections

SELECT * 
FROM los_angeles_restaurant_health_inspections
WHERE facility_zip IN ('90049', '90034', '90045');