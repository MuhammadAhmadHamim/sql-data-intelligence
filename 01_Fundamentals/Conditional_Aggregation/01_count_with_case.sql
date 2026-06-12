/*
For each customer_id return:

-> customer_id
-> total: total orders that customer placed
-> shipped: count where status = 'shipped'
--> cancelled: count where status = 'cancelled'

Return only customers who have at least one cancelled order.
Order by customer_id.
*/
SELECT customer_id,
        COUNT(*) AS total,
        -- shipped, cancelled using COUNT(CASE ...)
        COUNT(CASE WHEN status = 'shipped' THEN 1 END) AS shipped,
        COUNT(CASE WHEN status = 'cancelled' THEN 1 END) AS cancelled
FROM orders
GROUP BY customer_id
-- filter to customers with at least one cancellation
HAVING COUNT(CASE WHEN status = 'cancelled' THEN 1 END) > 0
ORDER BY customer_id;