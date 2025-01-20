SELECT 
    home_library_definition, 
    total_renewals AS total_renewals
FROM 
    library_usage
GROUP BY 
    home_library_definition
ORDER BY 
    total_renewals DESC;