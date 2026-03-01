/*
You are cleaning up a database for a marketing campaign.
Your customers table has separate columns for names and locations,but you need a single string to print on a mailing label.
Write a query that returns a single column named mailing_label.
The output for the first row should look exactly like this:
"Jane Doe from New York"

Hint: You'll need to include literal strings (like spaces and the word "from") inside the CONCAT function.

Hint: In many SQL dialects (MySQL, PostgreSQL), the syntax is CONCAT(string1, string2, ...).
*/
SELECT CONCAT(first_name , " " , last_name , " from " , city) AS mailing_label
FROM customers