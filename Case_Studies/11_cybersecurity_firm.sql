--You have a cyber security firm that experienced an arbitrary attack, 
--resulting in all of your systems shutting down.
--To solve this issue, you need to identify all of the events that appear suspicious.
-- A suspicious event meets one or more of the following criteria:

--1)Its size is significantly different from the average normal event size of 50MB.
--For this analysis, consider files smaller than 1MB or larger than 100MB as suspicious.
--2)It was created before the year 2000
--3)It has a missing name
--Your task:

--1)Identify all suspicious events based on the criteria mentioned above.
--2)Return the event IDs and their names in descending order by their ID.
SELECT id, name
FROM events
-- Write your code below
WHERE (size< 1 OR size> 100)
OR year< 2000
OR name IS NULL
ORDER BY id DESC