/*
For each person in the friends table, find all the friend-of-friend connections they have.
A friend-of-friend connection occurs when person A is friends with person B, who is in turn friends with person C.
List these connections as three columns:

(i) friend1: the starting person
(ii) friend2: their direct friend
(iii) friend3: their friend's friend

Rules:

1) Don't include cases where friend3 is the same person as friend1
2) Order the results by friend1's name in descending order

Example: 
    If Alice is friends with Bob, and Bob is friends with Carol, 
then Alice-Bob-Carol would be a valid friend-of-friend connection.
*/
SELECT f1.name AS friend1,
       f2.name AS friend2,
       f3.name AS friend3
FROM friends AS f1
JOIN friends AS f2 ON f1.friend_id = f2.id
JOIN friends AS f3 ON f2.friend_id = f3.id
WHERE NOT f1.id = f3.id 
ORDER BY f1.name DESC