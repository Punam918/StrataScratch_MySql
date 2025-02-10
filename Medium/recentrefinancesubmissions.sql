-- Write a query that joins this submissions table to the loans table and returns the total loan balance on each user’s most recent ‘Refinance’ submission. Return all users and the balance for each of them.

-- Tables: loans, submissions

WITH recent_refinance AS (
    -- Step 1: Find the most recent 'Refinance' submission for each user
    SELECT 
        l.user_id, 
        l.type,
        s.loan_id, 
        s.balance,
        
        ROW_NUMBER() OVER (PARTITION BY l.user_id ORDER BY s.id DESC) AS rn
    FROM submissions s
    JOIN loans l ON s.loan_id = l.id
    WHERE l.type = 'Refinance'
)


SELECT 
    l.user_id, 
    COALESCE(rr.balance, 0) AS total_loan_balance
FROM loans l
LEFT JOIN recent_refinance rr ON l.user_id = rr.user_id AND rr.rn = 1
GROUP BY l.user_id, rr.balance;s