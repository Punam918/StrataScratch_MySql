-- Given a list of a company's employees, find the name of the manager from the 
-- largest department. Manager is each employee that contains word "manager" under their position. 
-- Output their first and last name.

-- Table: az_employees

WITH DepartmentSize AS (
    SELECT 
        department_id, 
        department_name,
        COUNT(id) AS employee_count
    FROM az_employees
    GROUP BY department_id, department_name
),
LargestDepartment AS (
    SELECT department_id 
    FROM DepartmentSize
    WHERE employee_count = (SELECT MAX(employee_count) FROM DepartmentSize)
)
SELECT 
    first_name, 
    last_name
FROM az_employees
WHERE department_id IN (SELECT department_id FROM LargestDepartment)
AND LOWER(position) LIKE '%manager%';
