-- Find the industry with lowest average sales. Output that industry.

-- Table: forbes_global_2010_2014

select industry from forbes_global_2010_2014
group by industry
order by avg(sales) asc
limit 1;
