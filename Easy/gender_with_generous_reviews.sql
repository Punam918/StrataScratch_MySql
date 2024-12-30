
WITH guest AS (
   SELECT 
       from_type,
       from_user,
       review_score
   FROM airbnb_reviews
   WHERE from_type = 'guest'
)
SELECT 
   gender, 
   AVG(review_score) AS avg_review_score
FROM guest
JOIN airbnb_guests
ON guest.from_user = airbnb_guests.guest_id
GROUP BY gender
ORDER BY avg_review_score DESC;