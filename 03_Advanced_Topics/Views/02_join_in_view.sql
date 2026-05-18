-- Create a view using JOINs 
CREATE VIEW product_description
AS
SELECT productName, quantityInStock, msrp, textdescription
FROM products AS p
JOIN productlines AS pl ON p.productline = pl.productline;

SELECT * 
FROM product_description; 