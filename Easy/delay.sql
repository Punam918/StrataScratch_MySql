-- Find all US flight details which had no delay (use only arr_delay column for filtering).

-- Table: us_flights

SELECT *
FROM us_flights
WHERE arr_delay <= 0;
