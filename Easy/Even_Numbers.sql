select worker_id, concat(first_name,' ',last_name) from worker 
where MONTH(joining_date) = 6 
AND worker_id %2 = 0;