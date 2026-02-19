/*
Write a query that shows:

1) The event ID
2) The start date formatted as "DD-MM-YYYY". Call this column formatted_start
3) The end date formatted as "DD-MM-YYYY". Call this column formatted_end
4) The duration in days between start and end, rounded to the nearest whole number. Call this column duration_days

Filter only the rows that the year of the start column is 2009 (STRFTIME() returns a string and not a number).
Sort the results by the duration days in descending order.
*/
SELECT id,
STRFTIME('%d-%m-%Y',start) AS formatted_start,
STRFTIME('%d-%m-%Y',end) AS formatted_end,
ROUND(JULIANDAY(end) - JULIANDAY(start)) AS duration_days
FROM events
WHERE STRFTIME('%Y',start) LIKE '2009'
ORDER BY duration_days DESC