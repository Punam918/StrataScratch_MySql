-- Write a query to get a list of products that have not had any sales. Output the ID and market name of these products.

-- Tables: fct_customer_sales, dim_product

SELECT 
    p.prod_sku_id, 
    p.market_name
FROM 
    dim_product p
LEFT JOIN 
    fct_customer_sales s
ON 
    p.prod_sku_id = s.prod_sku_id
WHERE 
    s.prod_sku_id IS NULL;