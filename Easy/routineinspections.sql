-- Find all routine inspections where high-risks issues were found.

-- Table: los_angeles_restaurant_health_inspections


SELECT * 
FROM los_angeles_restaurant_health_inspections
WHERE service_description = 'Routine Inspection' 
AND pe_description LIKE '%High Risk%';
