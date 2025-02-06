-- Replace the letter 'a' with 'A' in the first name.

-- Table: worker

SELECT REPLACE(first_name, 'a', 'A') AS modified_first_name  
FROM worker;
