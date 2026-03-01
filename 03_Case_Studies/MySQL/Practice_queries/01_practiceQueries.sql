-- Task: get all data from city table
select id,name,countrycode,district,population
from world.city;

-- alternate way: use asterick rather writing all columns
select * from world.city;

-- show data of countrycode and name of all cities
select countrycode,name
from world.city;

-- limit is used to set the size of result window
-- it means how many records you want to show in query result
-- for example, show first 5 records
select * 
from world.city
limit 5;

-- offset is used with limit to skip the starting rows
-- for example, show 5 records skipping first 2 record
select *
from world.city
limit 5 offset 2;

-- show name and population of each city
select name, population
from world.city;

-- sort the cities with respect to population
select name,Population
from world.city
order by population;

-- find city with the lowest population
select name,Population
from world.city
order by population
limit 1;

-- find city with highest population
select name,Population
from world.city
order by population desc
limit 1;

-- find city which stands at 10th position in highest populated cities
select name,Population
from world.city
order by population desc
limit 1 offset 9;

-- which cities stand at 101-199 positions among highest populated cities?
select name,Population
from world.city
order by population desc
limit 99 offset 100; 

-- show data of countrycode only
select countrycode 
from world.city;

-- use distinct keyword to get unique values in a column
select distinct countrycode
from world.city;

-- show alias instead of column name
select countrycode as Country, name as "Name of City"
from world.city;

-- merging columns data (concatenation)
-- show city name followed by city population
select concat(name,population)
from world.city;

-- add string literal to column data
select concat(name," has ",population) as "City with Population"
from world.city;

-- expression in select
select name as city,
population as "city population",
population/1000 as "Population in Thousands"
from world.city
order by population desc;

-- use count() to count the values in a column
select count(countrycode) as "Country Count"
from world.city;

-- count records in city table
select count(*) as "Record Count"
from world.city;

-- count unique values in countrycode column in city table
select count(distinct countrycode) as "Distinct Country Count"
from world.city;

-- note that count function does not count null values
-- count countries where independence year is mentioned
select count(indepyear)
from world.country;

-- count total records in country table
select count(*) 
from world.country;
