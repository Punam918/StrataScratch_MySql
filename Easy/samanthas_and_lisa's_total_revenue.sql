SELECT salesperson, SUM(sales_revenue) 
FROM sales_performance
WHERE salesperson IN ('samantha', 'Lisa')
GROUP BY salesperson;
