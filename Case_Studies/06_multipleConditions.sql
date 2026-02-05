--Write a query to find all candies that are either:

--1) brown and cost 2 OR
--2) mixed and weigh less than 40

--The query should return only the name and color of these candies.
SELECT name, color 
FROM candies
-- Write your code below
WHERE color="brown" AND price=2 OR color="mixed" AND weight < 40

--Fetch all of the people who meet one of the following criteria:

--1)The age is above 30 and the status either is seeking or retired
--2)The age is under 50 and the status either is employed or unemployed
--3)The age is between 20 and 28 (including 20 and 28)

SELECT *
FROM people
WHERE age> 30 AND (status="retired" OR status="seeking")
OR age< 50 AND (status="employed" OR status="unemployed")
OR (age> 19 AND age<29)