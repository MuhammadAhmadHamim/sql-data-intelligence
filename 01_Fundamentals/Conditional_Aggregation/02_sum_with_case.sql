/*
type is either 'sale' or 'refund'.

For each category return:

-> category
-> net_revenue: sum of sale amounts minus sum of refund amounts

Compute net_revenue in a single SUM(CASE …) expression where refunds contribute their amount as a negative number. 
Order by net_revenue descending.
*/
SELECT category,
        -- one SUM(CASE ...) where refunds count negative
        SUM(CASE WHEN type = 'sale' THEN amount ELSE (-amount) END) AS net_revenue
FROM transactions
GROUP BY category
ORDER BY net_revenue DESC;