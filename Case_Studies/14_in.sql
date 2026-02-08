--Return all the records from the following countries:

--Oman, Nicaragua, Bhutan, Senegal, Belarus
SELECT *
FROM countries
WHERE country IN ('Oman' , 'Nicaragua' , 'Bhutan' , 'Senegal' , 'Belarus')