/*
Imagine you have a table called daily_sales.
You want to see how much money you made today compared to how much you are going to make tomorrow.

Write a query that returns three columns:
-> sale_date
-> amount (Today's sales)
-> tomorrow_sales (The sales amount from the next day)
*/
SELECT sale_data, amount,
    LEAD(amount, 1) OVER(ORDER BY sale_date)
FROM daily_sales;