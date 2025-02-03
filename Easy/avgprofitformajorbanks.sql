-- Find the average profit for major banks.

-- Table: forbes_global_2010_2014

SELECT AVG(profits) 
FROM forbes_global_2010_2014
WHERE company LIKE '%bank%'
AND rank BETWEEN 1 AND 5;
