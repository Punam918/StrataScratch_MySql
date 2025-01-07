SELECT customers.first_name,
       orders.order_date,
       orders.order_details,
       orders.total_order_cost
FROM orders
JOIN customers ON customers.id = orders.cust_id
WHERE customers.first_name IN ('Jill',
                               'Eva');