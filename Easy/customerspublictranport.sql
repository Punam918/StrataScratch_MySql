SELECT 
    advertising_channel,
    year,
    ROUND(SUM(money_spent) * 1.0 / SUM(customers_acquired), 2) AS cost_per_customer
FROM 
    uber_advertising
WHERE 
    advertising_channel LIKE '%bus%'
GROUP BY 
    advertising_channel, year
ORDER BY 
    year ASC, advertising_channel ASC;