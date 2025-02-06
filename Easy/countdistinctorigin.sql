-- Find how many different origin airports exist?

-- Table: us_flights
select count(distinct origin) from us_flights;