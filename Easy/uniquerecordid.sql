-- Check if record_id is unique for every row.
-- Output the total record ids and total unique record ids for comparison.

-- Table: los_angeles_restaurant_health_inspections

SELECT 
    COUNT(record_id) AS total_record_ids, 
    COUNT(DISTINCT record_id) AS total_unique_record_ids
FROM los_angeles_restaurant_health_inspections;