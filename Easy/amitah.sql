-- Find the position of the lower case letter 'a' in the first name of the worker 'Amitah'.

-- Table: worker
SELECT POSITION('a' IN first_name) AS position_of_a  
FROM worker  
WHERE first_name = 'Amitah';
