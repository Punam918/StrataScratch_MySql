-- Find the number of employees working in the Admin department that joined in April or later.

-- Table: worker
select count(*) from worker
where department = 'admin'
and month(joining_date)>=4;