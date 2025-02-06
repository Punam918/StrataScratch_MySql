-- List all hotels with their total number of reviews. Show the results sorted by the number of reviews from highest to lowest and output the hotel name along with the reviews.

-- Table: hotel_reviews
SELECT hotel_name, SUM(total_number_of_reviews) AS total_reviews
FROM hotel_reviews
GROUP BY hotel_name
ORDER BY total_reviews DESC;