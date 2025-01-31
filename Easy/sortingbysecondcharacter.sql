-- You've been asked to arrange a column of random IDs in ascending alphabetical order based on their second character.

-- Table: random_id


SELECT * 
FROM random_id
ORDER BY SUBSTRING(id, 2, 1) ASC;
