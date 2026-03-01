/*
Imagine you have a users table where people typed their emails however they wanted. 
You need to find a user with the email ALICE@GMAIL.COM,but you aren't sure if it was saved as alice@gmail.com or Alice@Gmail.Com.

Write a query that returns the email column, but force it to show in all uppercase so it looks consistent.
Then, use a WHERE clause to find that specific user,
making sure your search is case-insensitive by converting the column to uppercase before checking.
*/
SELECT UPPER(email)
FROM users
WHERE UPPER(email) = 'ALICE@GMAIL.COM'