SELECT year, 
       (midwest + northeast + south + west) AS total_housing_units
FROM housing_units_completed_us
GROUP BY year
ORDER BY year ASC;
