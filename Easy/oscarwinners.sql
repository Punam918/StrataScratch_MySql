-- Find the details of oscar winners between 2001 and 2009.

-- Table: oscar_nominees

select * from oscar_nominees
where year between 2001 and 2009
and winner = 1;