SELECT 
    CAST(stars AS UNSIGNED) AS stars_int,
    business_name,
    cool,
    funny,
    review_date,
    review_id,
    review_text,
    useful,
    user_id
FROM yelp_reviews
WHERE stars NOT LIKE '^[0-9]+$' -- Ensure 'stars' contains only numeric characters
  AND stars IS NOT NULL; -- Exclude NULL values