-- Write a query that returns the rate_type, loan_id, loan balance , and a column that shows with what percentage the loan's balance contributes to the total balance among the loans of the same rate type.

-- Table: submissions


WITH loanpercent AS (
    SELECT 
        loan_id, 
        rate_type, 
        balance, 
        balance / SUM(balance) OVER (PARTITION BY rate_type) AS loan_percentage
    FROM submissions
)

SELECT 
    rate_type, 
    loan_id, 
    balance AS loanbalance, 
    loan_percentage
FROM loanpercent;
