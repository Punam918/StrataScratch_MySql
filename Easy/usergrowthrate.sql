WITH dec_users AS (
    SELECT account_id, COUNT(DISTINCT user_id) AS dec_user_count
    FROM sf_events
    WHERE DATE_PART('year', date) = 2020 AND DATE_PART('month', date) = 12
    GROUP BY account_id
),
jan_users AS (
    SELECT account_id, COUNT(DISTINCT user_id) AS jan_user_count
    FROM sf_events
    WHERE DATE_PART('year', date) = 2021 AND DATE_PART('month', date) = 1
    GROUP BY account_id
)
SELECT 
    j.account_id, 
    COALESCE(j.jan_user_count, 0) / NULLIF(d.dec_user_count, 0) AS growth_rate
FROM jan_users j
LEFT JOIN dec_users d ON j.account_id = d.account_id;
