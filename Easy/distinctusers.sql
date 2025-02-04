-- How many unique users have performed a search?

-- Table: airbnb_searches

select count(distinct id_user) from airbnb_searches;