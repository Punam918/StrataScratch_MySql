-- For each video game player, find the latest date when they logged in.

-- Table: players_logins

select player_id, max(login_date) as latest from players_logins
group by player_id;