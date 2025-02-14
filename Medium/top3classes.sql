
-- The marketing department wants to launch a new promotion for the most successful product classes.


-- Find the top 3 product classes according to their number of sales. In the event of a tie, output all results.

-- Tables: online_products, online_orders



WITH ProductSales AS (
    SELECT 
        p.product_class, 
        SUM(o.units_sold) AS total_sales
    FROM online_products p
    JOIN online_orders o ON p.product_id = o.product_id
    GROUP BY p.product_class
),
RankedClasses AS (
    SELECT 
        product_class, 
        total_sales,
        DENSE_RANK() OVER (ORDER BY total_sales DESC) AS ranking
    FROM ProductSales
)
SELECT 
    product_class, 
    total_sales
FROM RankedClasses
WHERE ranking <= 3;