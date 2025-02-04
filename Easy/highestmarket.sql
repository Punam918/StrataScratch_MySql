-- Finding the highest market value for each sector. Which sector is it best to invest in? Output the result along with the sector name. Order the result based on the highest market value in descending order.

-- Table: forbes_global_2010_2014

SELECT sector, MAX(marketvalue) AS highest_marketvalue
FROM forbes_global_2010_2014
GROUP BY sector
ORDER BY highest_marketvalue DESC;