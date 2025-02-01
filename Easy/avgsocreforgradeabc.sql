-- Find the average score for grades A, B, and C.
-- Output the results along with the corresponding grade (ex: 'A', avg(score)).

-- Table: los_angeles_restaurant_health_inspections

select grade,avg(score) from los_angeles_restaurant_health_inspections
where grade in ("a","b","c")
group by grade;