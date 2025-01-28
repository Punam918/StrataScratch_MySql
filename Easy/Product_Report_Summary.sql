SELECT 
    p.product_category, 
    COUNT(DISTINCT m.transaction_id) AS unique_transactions, 
    SUM(m.sales) AS total_sales
FROM 
    wfm_transactions AS m
JOIN 
    wfm_products AS p
ON 
    m.product_id = p.product_id
WHERE 
    YEAR(m.transaction_date) = 2017
GROUP BY 
    p.product_category
HAVING 
    COUNT(*) > 0  -- Ensures only categories with sold products are included
ORDER BY 
    total_sales DESC, 
    unique_transactions DESC;
