-- List all interactions of user with id 4 on either day 0 or 2.

-- Table: facebook_user_interactions

select count(*) as noofinteractin
from  facebook_user_interactions
where user1 = 4 or user2 = 4
and day In (0,2);

