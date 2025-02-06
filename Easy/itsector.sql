-- Count the number of companies in the Information Technology sector in each country.
-- Output the result along with the corresponding country name.
-- Order the result based on the number of companies in the descending order.

-- Table: forbes_global_2010_2014

select country, count(*) as no from forbes_global_2010_2014
where sector = 'Information Technology' 
group by country
order by no desc;