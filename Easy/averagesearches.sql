-- Find the average number of searches made by each user and present the result with their corresponding user id.

-- Table: airbnb_searches
SELECT id_user, AVG(n_searches) AS avg_searches
FROM airbnb_searches
GROUP BY id_user;
