select count(distinct c.user_id), u.status, c.date
from rc_calls as c
join rc_users as u
on c.user_id = u.user_id
where month(c.date) = 4 and year(c.date) =2020 and u.status = 'paid';