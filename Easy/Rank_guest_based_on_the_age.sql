SELECT guest_id, age from airbnb_guests
order by age desc;


SELECT guest_id,age, RANK() over(ORDER BY age DESC) as age_rank
from airbnb_guests
order by age_rank;
