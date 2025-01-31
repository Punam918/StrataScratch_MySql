-- Amazon's information technology department is looking for information on employees' most recent logins.


-- The output should include all information related to each employee's most recent login.

-- Table: worker_logins


WITH ranked_logins AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY worker_id ORDER BY login_timestamp DESC) AS rn
    FROM worker_logins
)
SELECT city, country, device_type, id, ip_address, login_timestamp, region, worker_id
FROM ranked_logins
WHERE rn = 1;
