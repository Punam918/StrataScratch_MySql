-- Write a query that will return all cities with more customers than the average number of  
-- customers of all cities that have at least one customer. For each such city, return the country name,
-- the city name, and the number of customers

-- Tables: linkedin_customers, linkedin_city, linkedin_country

WITH CityCustomerCounts AS (
    SELECT 
        city_id, 
        COUNT(id) AS customer_count
    FROM linkedin_customers
    GROUP BY city_id
),
AverageCustomerCount AS (
    SELECT AVG(customer_count) AS avg_customers
    FROM CityCustomerCounts
)
SELECT 
    ctry.country_name, 
    city.city_name, 
    ccc.customer_count
FROM CityCustomerCounts ccc
JOIN linkedin_city city ON ccc.city_id = city.id
JOIN linkedin_country ctry ON city.country_id = ctry.id
WHERE ccc.customer_count > (SELECT avg_customers FROM AverageCustomerCount);