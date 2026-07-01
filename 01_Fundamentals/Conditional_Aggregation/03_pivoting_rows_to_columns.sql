/*
Pivot the data so each row is one month with these columns:

-> month
-> apples: total units for product 'apples' that month
-> bananas: same for 'bananas'
-> cherries: same for 'cherries'
-> total: total units across all products that month

Return only months whose total is at least 20. Order by month.
*/
SELECT month,
        -- one SUM(CASE ...) per product, plus total
        SUM(CASE WHEN product = 'apples' THEN units ELSE 0 END) AS apples,
        SUM(CASE WHEN product = 'bananas' THEN units ELSE 0 END) AS bananas,
        SUM(CASE WHEN product = 'cherries' THEN units ELSE 0 END) AS cherries,
        SUM(units) AS total
FROM sales
GROUP BY month
-- filter to months with total >= 20
HAVING total >= 20
ORDER BY month;