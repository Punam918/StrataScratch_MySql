-- Find the most profitable company from the financial sector. Output the result along with the continent.

-- Table: forbes_global_2010_2014

select company,max(profits) as prof from forbes_global_2010_2014
where sector = 'financials'
group by company
order by prof desc
limit 5;