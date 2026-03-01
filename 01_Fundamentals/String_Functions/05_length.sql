/*
You are building a sign-up flow and want to find any users who have picked a username that is longer than 10 characters
so you can ask them to shorten it.

Write a query that returns the username and a second column called name_count that shows the length of each username.
Filter the results to only show people with more than 10 characters.

Hint: Use LENGTH(column_name) in both your SELECT and your WHERE clause.
*/
SELECT username, 
       LENGTH(username) AS name_count
FROM users
WHERE LENGTH(username) > 10;