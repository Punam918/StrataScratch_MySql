-- Find distinct searches for Los Angeles neighborhoods. Output neighborhoods and remove duplicates.

-- Table: airbnb_search_details

SELECT DISTINCT neighbourhood
FROM airbnb_search_details
WHERE city = 'Los Angeles'
ORDER BY neighbourhood;