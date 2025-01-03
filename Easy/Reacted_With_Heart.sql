SELECT DISTINCT B.* 
from facebook_reactions as A
JOIN facebook_posts as B
ON A.post_id = B.post_id
WHERE A.reaction = 'heart';
