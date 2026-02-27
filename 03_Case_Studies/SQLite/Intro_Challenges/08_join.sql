/*
Find the customer IDs of customers who have ordered products with a unit price less than 10,
and list the total quantity of those cheap products each customer has ordered.

Return following columns:

(i) customer_id
(ii) total_quantity (the sum of quantities of products with a unit price < 10 for each customer)
*/
SELECT
    orders.customer_id,
    SUM(order_items.quantity) AS total_quantity
FROM orders
INNER JOIN order_items ON orders.id = order_items.order_id
INNER JOIN products ON order_items.product_id = products.id
WHERE products.unit_price < 10
GROUP BY orders.customer_id;