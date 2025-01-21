SELECT 
    total_checkouts,
    COUNT(*) AS patron_count
FROM 
    library_usage
WHERE 
    total_checkouts < 10
GROUP BY 
    total_checkouts
ORDER BY 
    total_checkouts DESC;