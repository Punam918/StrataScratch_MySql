
-- Find the owner_name and the pe_description of facilities owned by 'BAKERY' where low-risk cases have been reported.

-- Table: los_angeles_restaurant_health_inspections

SELECT owner_name, pe_description
FROM los_angeles_restaurant_health_inspections
WHERE owner_name = 'BAKERY' 
AND pe_description LIKE '%Low Risk%';