-- Find all posts with a keyword that contains 'nba' substring. For such rows output all columns.

-- Table: facebook_posts

SELECT * 
FROM facebook_posts 
WHERE post_keywords LIKE '%nba%';
