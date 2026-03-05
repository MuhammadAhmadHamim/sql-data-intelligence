/*
Challenge 1: The "Loyalty" Report (LEFT JOIN)
The Setup: You have a members table and a checkins table (for a gym).

Goal: List every single member name and the date they checked in.

The Catch: If a member has never checked in, their name must still appear (with a NULL for the date).
*/
SELECT m.names AS member_names, c.date AS date_of_join
FROM members AS m 
LEFT JOIN checkins AS c ON m.id = c.member_id
ORDER BY m.id;