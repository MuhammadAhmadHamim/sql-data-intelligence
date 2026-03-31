/*
Your bar stocks a vast selection of juices, and you need to identify which ones require attention.
Identify and sort these juices based on the following clear criteria:

1.Old Expired Juices

(i) Juices where the expiration year is MORE than 6 years before the current year(current_year - expiration_year > 6).
(ii) These need to be recycled immediately.

2.Almost Expired Juices

(i) Juices expiring in the current year.
(ii) OR juices expiring next year (expiration_year = current_year + 1)
(iii)These need to be sent for renewal

Follow these steps:

1. Extract the IDs of juices that meet either of these criteria
2. Rename the ID column to 'to_renew'
3. Sort results by processing priority:
(i) Most urgent first (oldest expired juices)
(ii) Then almost expired juices
(iii) Use (current_year - expiration_year) for sorting
*/
SELECT id AS to_renew
FROM beverages
WHERE current_year - expiration_year > 6
OR (expiration_year = current_year)
OR expiration_year = current_year + 1 
ORDER BY (current_year - expiration_year) DESC