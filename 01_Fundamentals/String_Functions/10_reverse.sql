/*
Check whether the given number column and print the palindromes.
*/
SELECT number 
FROM records
WHERE REVERSE(number) = number