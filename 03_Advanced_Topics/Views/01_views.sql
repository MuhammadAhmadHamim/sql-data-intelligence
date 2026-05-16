-- Create a view to display specific info about the customers in customer table rather than the whole table
CREATE VIEW cust_details
AS 
SELECT name, phone, city
FROM customers;