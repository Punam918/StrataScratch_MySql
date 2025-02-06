-- Find the number of workers by department who joined on or after April 1, 2014.


-- Output the department name along with the corresponding number of workers.


-- Sort the results based on the number of workers in descending order.

-- Table: worker

select department, count(*) as noofworker from worker
where month(joining_date)>=4
group by department
order by noofworker desc;

