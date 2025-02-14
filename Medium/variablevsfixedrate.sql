-- Write a SQL query to show each loan and its rate type. For each loan, create two new columns: fixed and variable. If the loan has a fixed rate, put a 1 in the fixed column and a 0 in the variable column. If the loan has a variable rate, do the opposite.

-- Table: submissions
SELECT 
    loan_id, 
    rate_type, 
    CASE 
        WHEN rate_type = 'fixed' THEN 1 
        ELSE 0 
    END AS fixed, 
    CASE 
        WHEN rate_type = 'variable' THEN 1 
        ELSE 0 
    END AS variable
FROM submissions;