-- Find all industries with a positive average profit. For those industries extract their lowest sale.
-- Output the industry along with the corresponding lowest sale and average profit.
-- Sort the output based on the lowest sales in ascending order.

-- Table: forbes_global_2010_2014

SELECT industry, 
       MIN(sales) AS lowest_sale, 
       AVG(profits) AS average_profit
FROM forbes_global_2010_2014
GROUP BY industry
HAVING AVG(profits) > 0
ORDER BY lowest_sale ASC;