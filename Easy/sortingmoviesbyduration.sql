-- select show_id,title,duration 
-- from movie_catalogue 

-- order by duration desc;
-- You have been asked to sort movies according to their duration in descending order.


-- Your output should contain all columns sorted by the movie duration in the given dataset.

-- Table: movie_catalogue

SELECT * 
FROM movie_catalogue
ORDER BY CAST(REGEXP_SUBSTR(duration, '[0-9]+') AS UNSIGNED) DESC;