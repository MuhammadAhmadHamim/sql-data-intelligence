/*
Write a query that returns:

(1) The total number of sales transactions
(2) The average quantity per sale
(3) The maximum price per unit
(4) The total revenue (sum of quantity * price_per_unit)

Your result should have these exact column names:

-> total_transactions
-> avg_quantity
-> max_unit_price 
-> total_revenue
*/
SELECT COUNT(quantity) AS total_transactions,
       AVG(quantity) AS avg_quantity,
       MAX(price_per_unit) AS max_unit_price,
       SUM(quantity * price_per_unit) AS total_revenue
FROM sales
       
