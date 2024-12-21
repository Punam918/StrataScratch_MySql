SELECT 
    noc AS National_Olympics_Committee, 
    MIN(year) AS First_Year_Participated
FROM 
    olympics_athletes_events
GROUP BY 
    noc 
ORDER BY 
    First_Year_Participated ASC, 
    National_Olympics_Committee ASC; 
