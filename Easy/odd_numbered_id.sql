SELECT * from worker
where MONTH(joining_date) = 2
AND worker_id%2 != 0;