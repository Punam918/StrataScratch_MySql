-- Find the number of inspections per day.
-- Output the result along with the date of the activity.
-- Order results based on the activity date in the ascending order.

-- Table: los_angeles_restaurant_health_inspections
SELECT activity_date, COUNT(*) AS inspections_count
FROM los_angeles_restaurant_health_inspections
GROUP BY activity_date
ORDER BY activity_date ASC;
