-- Find the total assets of the energy sector.

-- Table: forbes_global_2010_2014

select sum(assets) from forbes_global_2010_2014
where sector = 'Energy';