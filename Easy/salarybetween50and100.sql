-- Find the full name of workers whose salaries range from 50,000 to 100,000 inclusive.


-- Output the worker's first name and last name in one column along with their salaries.

-- Table: worker

select concat(first_name, " ", last_name), salary from worker where
salary between 50000 and 100000;