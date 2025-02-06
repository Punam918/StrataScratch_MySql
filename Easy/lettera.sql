-- Find all workers whose first name contains the letter 'a'. Output all columns for such workers.

-- Table: worker
select * from worker where first_name like '%a%';