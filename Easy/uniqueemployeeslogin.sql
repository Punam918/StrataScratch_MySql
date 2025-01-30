-- You have been tasked with finding the worker IDs of individuals who logged in between the 13th to the 19th inclusive of December 2021.


-- In your output, provide the unique worker IDs for the dates requested.

-- Table: worker_logins

select distinct worker_id  from worker_logins
where login_timestamp between '2021-12-13 00:00:00' and '2021-12-19 00:00:00';