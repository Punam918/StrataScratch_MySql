-- Which partners have ‘pizza’ in their name and are located in Boston? And what is the average order amount? Output the partner name and the average order amount.

-- Tables: postmates_orders, postmates_markets, postmates_partners
-- with por as
-- ( 
--     select avg(p.amount) as amountt , m.name as mname, p.seller_id as sid
--     from postmates_orders as p
--     join postmates_markets m on
--     p.city_id = m.id
--     where m.name = 'boston'
--     group by m.name
-- )
-- select c.amountt, c.mname, p.name
-- from por c 
-- join postmates_partners p 
-- on c.sid = p.id
-- where p.name like '%pizza%'
-- group by p.name

WITH por AS ( 
    SELECT 
        p.seller_id AS sid, 
        AVG(p.amount) AS avg_amount, 
        m.name AS city_name
    FROM postmates_orders AS p
    JOIN postmates_markets m ON p.city_id = m.id
    WHERE m.name = 'Boston' 
    GROUP BY p.seller_id, m.name  
)
SELECT 
    c.avg_amount, 
    c.city_name, 
    p.name AS partner_name
FROM por c 
JOIN postmates_partners p ON c.sid = p.id
WHERE p.name LIKE '%pizza%';  