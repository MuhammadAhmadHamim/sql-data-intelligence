/*
Goal: Swap out parts of a string.
Scenario: You have a column of phone numbers formatted with dashes (555-1234), but your new system only wants numbers.
*/
SELECT REPLACE(phone_numbers , '-' , '')
FROM records;