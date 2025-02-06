-- Find the last record of the dataset without using LIMIT or ORDER BY.


-- Note: The earliest records correspond to the earliest employee ID's.

-- Table: worker
SELECT *  
FROM worker  
WHERE worker_id = (SELECT MAX(worker_id) FROM worker);