-- Find the total market value for the financial sector.

-- Table: forbes_global_2010_2014

select sum(marketvalue) from forbes_global_2010_2014
where sector = 'Financials';