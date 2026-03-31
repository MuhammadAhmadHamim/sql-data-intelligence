/*
You are the owner of a coffee shop. 
There are many customers that are waiting for their orders.
You may use only one type of coffee beans every day.

There are several criteria for selecting which beans to use.
First, we need to filter the beans based on these conditions:

(i) All beans must have a diameter greater than the average diameter of all beans in the table
(ii) For light beans: keep only those where the ratio of density to diameter is greater than 0.01
(iii) For dark beans: keep all of them
(iv)  For semi-dark beans: exclude all of them (they are considered unsuitable)

For each brand that meets these criteria, calculate their average density.
Only keep brands where the average density is less than 0.8.

Return the brand name and their average density (name the column avg_density) rounded to 3 decimal places. 
Sort the results by average density in ascending order.
*/
SELECT brand,ROUND(AVG(density),3) AS avg_density
FROM (
    SELECT brand,density,diameter_wide,shade
    FROM beans
    WHERE diameter_wide > (SELECT AVG(diameter_wide) FROM beans)
        AND (shade = 'dark' 
            OR (shade = 'light' AND density/diameter_wide > 0.01)
            )
)
GROUP BY brand
HAVING avg_density < 0.8
ORDER BY avg_density