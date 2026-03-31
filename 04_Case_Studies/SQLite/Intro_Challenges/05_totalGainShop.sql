/*
Your task is to calculate the total revenue for each category of items in a shop between January 1, 2015, and March 18, 2015.
Due to a systematic error in the data entry system, all price values in the database are lower than they should be by a fixed 
amount.

To correct these prices:

(i) First, calculate the average price across all items within the specified date range 
(2015-01-01 (January 1, 2015), to 2015-03-18 March 18, 2015)

(ii) Add this average price to each item's original price to get the correct price value
(iii) For each category, calculate the total revenue by multiplying the corrected price by the quantity and summing these values
(iv)  Present the results as (category, total_revenue) pairs, sorted by total revenue in descending order
*/
SELECT category, SUM(price * quantity) AS total_revenue
FROM (
    SELECT price + (SELECT AVG(price) FROM shop WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18') 
    AS price, quantity, category, list_date
    FROM shop
    WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
)
GROUP BY category
ORDER BY total_revenue DESC
