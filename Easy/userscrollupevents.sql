-- Find all users that have performed at least one scroll_up event.

-- Table: facebook_web_log

select distinct user_id from facebook_web_log
where action = 'scroll_up';