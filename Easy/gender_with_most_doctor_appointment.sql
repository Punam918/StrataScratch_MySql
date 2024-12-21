SELECT 
    gender, 
    COUNT(*) AS total_appointments
FROM 
    medical_appointments
GROUP BY 
    gender
ORDER BY 
    total_appointments DESC
LIMIT 1