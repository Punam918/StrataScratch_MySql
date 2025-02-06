-- Find all workers whose first name contains 6 letters and also ends with the letter 'h'.


-- Display all information about the workers in output.

-- Table: worker
select * from worker
where length(first_name) = 6 and first_name like '%h';