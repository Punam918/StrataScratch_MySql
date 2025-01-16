select name,concat(year, ' ', season) from olympics_athletes_events
where age < 18
group by name;