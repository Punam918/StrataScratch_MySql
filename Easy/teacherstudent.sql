-- Count the number of students lectured by each teacher.

-- Output the result along with the name of the teacher.

-- Table: sat_scores
SELECT teacher, COUNT(DISTINCT student_id) AS student_count
FROM sat_scores
GROUP BY teacher;
