SELECT day_of_week,count(*) as crime_count
from sf_crime_incidents_2014_01
group by day_of_week
ORDER BY crime_count DESC;
