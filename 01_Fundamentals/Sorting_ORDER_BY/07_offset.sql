/*
Write a query to find only the person who won the Bronze Medal (the 3rd fastest runner).

Hint: 
(i) In a race, a lower finish_time_seconds is better (faster).
(ii) You only want a single row.
*/
SELECT *
FROM race_results
ORDER BY finish_time_seconds ASC
LIMIT 1
OFFSET 2