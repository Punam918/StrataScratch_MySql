-- Find all workers who joined on February 2014.

-- Table: worker
select * from worker 
where joining_date > '2014-01-31' and joining_date<'2014-03-01';

SELECT *  
FROM worker  
WHERE YEAR(joining_date) = 2014  
AND MONTH(joining_date) = 2;