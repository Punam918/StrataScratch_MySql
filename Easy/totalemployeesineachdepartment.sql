-- Find the number of employees in each department.


-- Output the department name along with the corresponding number of employees.

-- Table: worker
select department,count(*) from worker
group by department;