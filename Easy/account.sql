-- How many accounts have performed a login in the year 2016?

-- Table: product_logins
SELECT COUNT(DISTINCT account_id) AS accounts_logged_in_2016
FROM product_logins
WHERE YEAR(login_date) = 2016;
