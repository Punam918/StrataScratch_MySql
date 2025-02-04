-- Count the number of user events performed by MacBookPro users.
-- Output the result along with the event name.
-- Sort the result based on the event count in the descending order.

-- Table: playbook_events

select event_name, count(*) as countt from playbook_events
where device = 'macbook pro'
group by event_name
order by countt desc;