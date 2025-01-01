SELECT 
    (SELECT COUNT(*) FROM facebook_friends) - 
    (SELECT COUNT(*) 
     FROM facebook_friends 
     WHERE user1 = 1 OR user2 = 1) AS relationships_not_part_of;
