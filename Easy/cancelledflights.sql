-- Count the number of cancelled flights by American Airlines (AA).

-- Table: us_flights

select count(cancelled) from us_flights
where unique_carrier = 'AA' AND cancelled = 1;