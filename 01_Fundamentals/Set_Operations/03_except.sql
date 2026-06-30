/*
Return one column product: every product that was sold last month but not this month. Order alphabetically.
*/

SELECT product FROM last_month
EXCEPT
SELECT product FROM this_month;