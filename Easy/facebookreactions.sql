-- Find all users who liked one or more posts

-- Table: facebook_reaction

select friend from facebook_reactions
where reaction = 'like'
group  by friend
having count(*)>1;