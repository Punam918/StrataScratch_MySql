-- Find all searches for accommodations where the number of bedrooms is equal to the number of bathrooms.

-- Table: airbnb_search_details

SELECT * 
FROM airbnb_search_details 
WHERE bedrooms = bathrooms;
