/*
The two tables track orders from different channels with different column names.
Return one combined list of every order with the columns:

-> channel: 'online' or 'retail'
-> order_id: order_no from online, ticket_no from retail
-> amount: the order's total (from amount or total)

Keep every row (no deduplication). Order by amount descending.
*/
-- two SELECTs aligned to the same 3 columns, joined by UNION ALL
WITH combined_result AS(
    SELECT 'online' AS channel,
        order_no AS order_id, amount
    FROM online_orders
    UNION ALL
    SELECT 'retail' AS channel,
        ticket_no AS order_id, 
        total AS amount
    FROM retail_orders
)

SELECT * 
FROM combined_result
ORDER BY amount DESC;