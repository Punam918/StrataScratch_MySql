
-- Output results along with the neighborhood name and sort the results based on the number of average beds in descending order.

-- Table: airbnb_search_details
select neighbourhood, avg(beds) as avgg from airbnb_search_details
where neighbourhood is not null
group by neighbourhood
having sum(beds)>=3
order by avgg desc;