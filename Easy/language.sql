-- How many users speak English, German, French or Spanish?


-- Note: Users who speak more than one language are counted only once.

-- Table: playbook_users
SELECT COUNT(DISTINCT user_id) AS num_users
FROM playbook_users
WHERE language IN ('English', 'German', 'French', 'Spanish');
