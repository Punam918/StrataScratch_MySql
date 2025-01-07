select customers.first_name, customers.last_name , customers.city , orders.order_details from customers 
left join orders on customers.id = orders.id
order by customers.first_name, orders.order_details;
