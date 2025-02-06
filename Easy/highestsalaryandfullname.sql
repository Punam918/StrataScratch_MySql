-- Your output should include the full name of the employee(s) with the highest salary in one column and the corresponding salary in the other.

-- Table: worker
select concat(first_name," ",last_name),salary from worker
group by first_name;