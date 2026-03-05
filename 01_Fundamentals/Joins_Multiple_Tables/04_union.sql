/*
There are 3 sales tables.

Find the sum of sales for each product of all tables together.

The result should include the product_id and the total sales.

Name this column total_sales.

Sort the results by the total sales in descending order.
*/
SELECT product_id , SUM(quantity_sold) AS total_sales
FROM (
    SELECT * FROM sales_2009
    UNION ALL
    SELECT * FROM sales_2010
    UNION ALL
    SELECT * FROM sales_2011
) AS sales
GROUP BY product_id
ORDER BY total_sales DESC