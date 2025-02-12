-- Write a query that returns a list of the bottom 2 companies by mobile usage. Company is defined in the customer_id column. Mobile usage is defined as the number of events registered on a client_id == 'mobile'. Order the result by the number of events ascending.
-- In the case where there are multiple companies tied for the bottom ranks (rank 1 or 2), return all the companies. Output the customer_id and number of events.

-- Table: fact_events
WITH mobile_usage AS (
    SELECT 
        customer_id, 
        COUNT(*) AS event_count
    FROM fact_events
    WHERE client_id = 'mobile'
    GROUP BY customer_id
),
ranked_companies AS (
    SELECT 
        customer_id, 
        event_count, 
        DENSE_RANK() OVER (ORDER BY event_count ASC) AS usage_rank
    FROM mobile_usage
)
SELECT customer_id, event_count
FROM ranked_companies
WHERE usage_rank <= 2
ORDER BY event_count ASC;