
-- Uber is interested in identifying gaps in their business. Calculate the count of orders for each status of each service. Your output should include the service name, status of the order, and the number of orders.

-- Table: uber_orders


SELECT 
    service_name,
    status_of_order,
    COUNT(*) AS number_of_orders
FROM 
    uber_orders
GROUP BY 
    service_name, status_of_order
ORDER BY 
    service_name, status_of_order;
