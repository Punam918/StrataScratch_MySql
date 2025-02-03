-- Find the number of people that made a search on Airbnb.

-- Table: airbnb_searches

SELECT COUNT(DISTINCT id_user) AS num_users
FROM airbnb_searches;
