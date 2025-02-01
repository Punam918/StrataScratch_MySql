
-- Count the number of unique facilities per municipality zip code along with the number of inspections. Output the result along with the number of inspections per each municipality zip code. Sort the result based on the number of inspections in descending order.

-- Table: los_angeles_restaurant_health_inspections
SELECT 
    facility_zip AS municipality_zip_code, 
    COUNT(DISTINCT facility_id) AS unique_facilities, 
    COUNT(*) AS total_inspections
FROM los_angeles_restaurant_health_inspections
GROUP BY facility_zip
ORDER BY total_inspections DESC;
