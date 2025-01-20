SELECT 
    COUNT(*) AS library_count
FROM (
    SELECT 
        home_library_code, 
        SUM(total_checkouts) AS total_checkouts
    FROM 
        library_usage
    WHERE 
        circulation_active_month = 'February' 
        AND circulation_active_year = 2015
    GROUP BY 
        home_library_code
    HAVING 
        SUM(total_checkouts) >= 100
) AS library_totals;