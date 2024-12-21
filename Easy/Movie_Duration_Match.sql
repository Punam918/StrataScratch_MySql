select f.flight_id, e.movie_id,e.duration as movie_duration
from flight_schedule as f 
join entertainment_catalog as e 
on
    e.duration <= f.flight_duration
WHERE 
    f.flight_id = 101
ORDER BY 
    e.duration ASC;