-- Find the number of views each post has.
-- Output the post id along with the number of views.
-- Order records by post id in ascending order.

-- Table: facebook_post_views

select post_id, count(*) from facebook_post_views
group by post_id
order by post_id;