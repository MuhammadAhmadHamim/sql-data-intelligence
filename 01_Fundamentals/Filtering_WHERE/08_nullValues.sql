--Fetch all of the unique names without missing values.
SELECT DISTINCT *
FROM people
WHERE  name IS NOT NULL
