-- What cities recorded the largest growth and biggest drop in order amount between March 11, 2019, and April 11, 2019. Just compare order amounts on those two dates. Your output should include the names of the cities and the amount of growth/drop.

-- Tables: postmates_orders, postmates_markets

WITH orders_filtered AS (
    SELECT 
        city_id, 
        DATE(order_timestamp_utc) AS order_date, 
        SUM(amount) AS total_amount
    FROM postmates_orders
    WHERE DATE(order_timestamp_utc) IN ('2019-03-11', '2019-04-11')
    GROUP BY city_id, DATE(order_timestamp_utc)
),

order_changes AS (
    SELECT 
        o1.city_id, 
        m.name AS city_name,
        COALESCE(o2.total_amount, 0) - COALESCE(o1.total_amount, 0) AS amount_change
    FROM orders_filtered o1
    LEFT JOIN orders_filtered o2 
        ON o1.city_id = o2.city_id 
        AND o1.order_date = '2019-03-11' 
        AND o2.order_date = '2019-04-11'
    JOIN postmates_markets m ON o1.city_id = m.id
)

(
    SELECT city_name, amount_change
    FROM order_changes
    ORDER BY amount_change DESC
    LIMIT 1  -- Largest growth
)
UNION ALL
(
    SELECT city_name, amount_change
    FROM order_changes
    ORDER BY amount_change ASC
    LIMIT 1  -- Biggest drop
);
