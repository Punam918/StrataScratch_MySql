-- Find all neighbourhoods present in this dataset.

-- Table: airbnb_search_details

SELECT DISTINCT neighbourhood
FROM airbnb_search_details
WHERE neighbourhood IS NOT NULL;
