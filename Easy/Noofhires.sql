-- You have been asked to find the number of employees hired between the months of January and July in the year 2022 inclusive.


-- Your output should contain the number of employees hired in this given time frame.

-- Table: employees

SELECT COUNT(*) AS num_employees_hired
FROM employees
WHERE joining_date BETWEEN '2022-01-01' AND '2022-01-30';
