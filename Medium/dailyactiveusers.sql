-- Find the average daily active users for January 2021 for each account. Your output should have account_id and the average daily count for that account.

-- Table: sf_events
WITH DailyActiveUsers AS (
    SELECT 
        DATE(date) AS event_date,  -- Convert datetime to date
        account_id, 
        COUNT(DISTINCT user_id) AS daily_users
    FROM sf_events
    WHERE date >= '2021-01-01' AND date < '2021-02-01'  -- Filter for January 2021
    GROUP BY event_date, account_id
)
SELECT 
    account_id, 
    AVG(daily_users) AS avg_daily_active_users
FROM DailyActiveUsers
GROUP BY account_id;
