--Fetch the 5 coldest places from the temperature table. Follow these steps:

--1) Sort the result in ascending order
--2) Limit the result to 5 rows
SELECT DISTINCT *
FROM temperature
WHERE avg_temp< 0
ORDER BY avg_temp 
LIMIT 5