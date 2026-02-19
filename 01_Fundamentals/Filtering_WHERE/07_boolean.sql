--Fetch all of the colorful objects. 
--Instead of writing colorful = 1 try to use the TRUE keyword.
Select *
FROM objects
WHERE colourful IS TRUE

--Find all objects that meet AT LEAST ONE of these conditions:

--1)colorful and not fragile
--2)In stock and small (size <= 2)
SELECT *
FROM objects
WHERE (colorful IS TRUE AND is_fragile IS NOT TRUE) 
OR in_stock IS TRUE AND size<= 2