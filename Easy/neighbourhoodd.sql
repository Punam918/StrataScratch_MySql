-- Find all neighborhoods that have properties with a parking space and don't charge for cleaning fees.

-- Table: airbnb_search_details

SELECT DISTINCT neighbourhood
FROM airbnb_search_details
WHERE amenities LIKE '%parking%' 
  AND cleaning_fee = 0;