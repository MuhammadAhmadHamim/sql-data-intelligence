/*
Find categories where their total quantity is greater than the average of all quantities in the shop.

Steps to solve:

(i)  First, we need the average of ALL quantities (This is the subquery)
(ii) Then, for each category, sum their quantities and compare with this average (use the HAVING keyword for group by)
*/