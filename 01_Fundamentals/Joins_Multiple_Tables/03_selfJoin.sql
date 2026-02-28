/*
Find pairs of friends who are mutual friends 
(mutual friendship exists when person A's friend_id points to person B AND person B's friend_id points to person A).
Display both friends names in a single row. 
Name the columns friend1 and friend2.

Note: Include in the WHERE clause the criteria friend1.id < friend2.id so that it will not include duplicate pairs 
*/
SELECT f1.name AS friend1, f2.name AS friend2
FROM friends AS f1
JOIN friends AS f2 ON f1.friend_id = f2.id AND f2.friend_id = f1.id
WHERE f1.id < f2.id