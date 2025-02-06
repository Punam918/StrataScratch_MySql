-- Combine the first and last names of workers with a space in-between in a column 'full_name'.

-- Table: worker
select concat(first_name," ", last_name) as full_name from worker;