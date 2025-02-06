-- Sort workers in ascending order by the first name and then in descending order by department name.

-- Table: worker
select first_name, department from worker
group by first_name, department
order by first_name asc, department desc;