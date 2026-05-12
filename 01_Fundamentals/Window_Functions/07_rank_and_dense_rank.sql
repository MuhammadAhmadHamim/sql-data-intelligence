/*
Create a query that shows the region, total medal count (sum of all medals regardless of color),
    and two types of rankings:

-> A regular_rank (with gaps) over the sum medals

-> A dense_rank (without gaps) over the sum of medals

Order result by:
    ORDER BY total_medals DESC, region ASC
*/
WITH calculated_table AS (
    SELECT region, SUM(medal_count) AS total_medals
    FROM medals
    GROUP BY region  
)

SELECT region, total_medals,
    RANK() OVER(ORDER BY total_medals ASC) AS regular_rank,
    DENSE_RANK() OVER(ORDER BY total_medals ASC) AS dense_rank
FROM calculated_table
ORDER BY total_medals DESC, region DESC;