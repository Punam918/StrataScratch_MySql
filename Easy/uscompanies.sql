-- Find the number of USA companies that are on the list.

-- Table: forbes_global_2010_2014
select count(company) as uscompanies from forbes_global_2010_2014
where country ='United States';