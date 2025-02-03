-- Find all actions which occurred more than once in the weblog.

-- Table: facebook_web_log
SELECT action, COUNT(*) AS action_count
FROM facebook_web_log
GROUP BY action
HAVING COUNT(*) > 1;
