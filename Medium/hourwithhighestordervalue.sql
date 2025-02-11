-- Which hour has the highest average order volume per day? Your output should have the hour which 
--satisfies that condition, and average order volume.

-- Table: postmates_orders
WITH hourly_orders AS (
    SELECT 
        EXTRACT(HOUR FROM order_timestamp_utc) AS order_hour,
        DATE(order_timestamp_utc) AS order_date,
        COUNT(id) AS order_count
    FROM postmates_orders
    GROUP BY order_hour, order_date
)

SELECT 
    order_hour,
    AVG(order_count) AS avg_order_volume
FROM hourly_orders
GROUP BY order_hour
ORDER BY avg_order_volume DESC
LIMIT 1;
