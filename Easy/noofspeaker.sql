-- Count the number of speakers for each language.
-- Sort the result based on the number of speakers in descending order.

-- Table: playbook_users
SELECT language, COUNT(*) AS num_speakers
FROM playbook_users
GROUP BY language
ORDER BY num_speakers DESC;
