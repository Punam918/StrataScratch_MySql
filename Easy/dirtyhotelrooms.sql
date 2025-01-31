-- Find hotels in the Netherlands that got complaints from guests about room dirtiness (word "dirty" in its negative review). Output all the columns in your results

-- Table: hotel_reviews


select hotel_name from hotel_reviews
where hotel_address like '%netherlands%' and negative_review like '%dirty%'
group by hotel_name;