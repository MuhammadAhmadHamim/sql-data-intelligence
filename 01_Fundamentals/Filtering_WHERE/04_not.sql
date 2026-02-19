--Fetch all of the people where the status is NOT retired..
SELECT *
FROM PEOPLE
-- Write your code below
WHERE NOT status="retired"

--Fetch all of the people who are not employed and are not under 25...
SELECT *
FROM PEOPLE
-- Write your code below
WHERE NOT status="employed" AND age > 25