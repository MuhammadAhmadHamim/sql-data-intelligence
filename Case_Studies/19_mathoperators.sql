--Create two calculated columns:

--First column named high_mix_op:
--Take the price column
--Multiply it by 2
--Subtract 20 from the result

--Second column named low_mix:
--Take the quantity column
--Divide it by 1.5
--Add 5 to the result
SELECT  price * 2 - 20 AS high_mix_op,
        quantity / 1.5 + 5 AS low_mix
FROM products;
