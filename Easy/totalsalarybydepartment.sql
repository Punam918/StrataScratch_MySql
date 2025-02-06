
-- You have been asked to calculate the total salary for each department. Provide the salary as well as the corresponding department.

-- Table: worker

select department, sum(salary) from worker
group by department;
