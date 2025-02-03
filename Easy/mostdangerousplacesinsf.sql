-- Output the number of incidents alongside the corresponding address and the district.
-- Order records based on the number of occurrences in descending order.

-- Table: sf_crime_incidents_2014_01


select address, pd_district,count(*) as noofocc from sf_crime_incidents_2014_01
group by address
order by noofocc desc;