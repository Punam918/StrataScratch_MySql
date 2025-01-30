
-- Calculate the sales revenue for the year 2021.

-- Table: amazon_sales

SELECT 
    SUM(order_total) AS total_revenue
FROM 
    amazon_sales
WHERE 
    YEAR(order_date) = 2021;