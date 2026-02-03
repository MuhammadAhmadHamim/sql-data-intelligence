--Fetch all of the people who are between the ages of 20 and 28 (including 20 and 28).
SELECT * 
FROM people
--Use of AND keyword which makes sure both conditions are satisfied..
WHERE age > 19 AND age < 29 

--Fetch all of the people who are either under age of 19 or above age 31 (not including 19 and not including 31) 
--or the status is employed.
SELECT * 
FROM people
WHERE status = "employed" AND age > 16 AND age < 26