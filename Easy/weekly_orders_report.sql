SELECT week , sum(quantity) FROM orders_analysis
WHERE week BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY week;