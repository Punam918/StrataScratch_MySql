-- Redfin helps clients to find agents. Each client will have a unique request_id and each
-- request_id has several calls. For each request_id, the first call is an “initial call” and 
-- all the following calls are “update calls”.  How many customers have called 3 or more times 
-- between 3 PM and 6 PM (initial and update calls combined)?

-- Table: redfin_call_tracking

SELECT COUNT(DISTINCT request_id) AS customer_count
FROM redfin_call_tracking
WHERE EXTRACT(HOUR FROM created_on) BETWEEN 15 AND 17
GROUP BY request_id
HAVING COUNT(*) >= 3;