-- Find the last five records of the dataset.

-- Table: worker
select * from worker
order by worker_id desc
limit 5;