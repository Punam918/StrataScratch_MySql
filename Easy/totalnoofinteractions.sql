-- Find the total number of interactions on days 0 and 2.
-- Output the result alongside the day.

-- Table: facebook_user_interactions

select day,count(*) from facebook_user_interactions
where day in (0,2)
group by day;