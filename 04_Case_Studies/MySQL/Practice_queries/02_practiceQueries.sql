--Use of the BETWEEN keyword
SELECT count(*) 
FROM city   
WHERE Population BETWEEN  300000 AND 500000;

--Inverting the results of BETWEEN keyword
SELECT count(*) 
FROM city
WHERE Population NOT BETWEEN  300000 AND 500000;

--Usage of IN keyword
SELECT count(*) 
FROM city
WHERE Population IN (300000 , 500000);

--Checking the variation in result of IN keyword
SELECT count(*) 
FROM city
WHERE Population IN (500000 , 300000); 
/* No change by changing the order */

--Inverting the result of IN keyword
SELECT count(*) 
FROM city
WHERE Population NOT IN (500000 , 300000);

--Counting the countries in world database 
SELECT count(*)  
FROM country;

--Counting the non-independent countries
SELECT count(*) - count(IndepYear) 
FROM country;

--Same as above
SELECT count(*)  
FROM country
WHERE IndepYear IS NULL;

--Counting the countries in Asia
SELECT count(*)  
FROM country
WHERE continent  ='Asia';

--Counting the countries in Asia whose name starts with P
SELECT count(*)  
FROM country
WHERE continent  ='Asia'
AND Name like 'P%';

--Displaying the countries in Asia whose name starts with P
SELECT *  
FROM country
WHERE continent  ='Asia'
AND Name like 'P%';

--Displaying the records who were rented after May 01, 2005
SELECT *
FROM sakila.rental
WHERE rental_date > '2005-05-01';

--Trying to calculate the days for which each vehicle was rented
SELECT return_date - rental_date AS rented_days /* Still need to convert it into days for subtracting */ 
FROM sakila.rental;