-- The sales division is investigating their sales for the past month in Oregon.


-- Calculate the total revenue generated from Oregon-based customers for April.

-- Tables: online_orders, online_customers


select sum(o.units_sold*o.customer_id) as total_revenue
from online_orders as o
join online_customers c
on o.customer_id = c.id
where c.state = 'oregon' and month(o.date) = 4;