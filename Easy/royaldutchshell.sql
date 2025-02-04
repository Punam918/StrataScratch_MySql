-- What is the profit to sales ratio (profit/sales) of Royal Dutch Shell?
-- Output the result along with the company name.

-- Table: forbes_global_2010_2014

select company, (profits/sales) as ratio from forbes_global_2010_2014
where company = 'Royal Dutch Shell';
