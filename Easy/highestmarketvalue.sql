-- Find the highest market value for each sector.
-- Output the sector name along with the result.

-- Table: forbes_global_2010_2014


SELECT sector, MAX(marketvalue) AS highest_market_value
FROM forbes_global_2010_2014
GROUP BY sector
ORDER BY highest_market_value DESC;
