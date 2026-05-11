/*
Regions receive medals in competitions. 
Create a report that shows:

-> Calculate for each region:
    (i)  total_medals: The sum of all medals they have
    (ii) rank_by_medals: Create a dense rank based on total_medals in asc order (regions with fewer medals get lower ranks)

-> Order the results by:
    (i)  rank_by_medals (ascending)
    (ii) region (alphabetically)

return:

(i)   region
(ii)  total_medals
(iii) rank_by_medals
*/
WITH total_medal_calculated AS (
    SELECT region, SUM(medal_count) AS total_medals
    FROM medals
    GROUP BY region
)

SELECT region, total_medals,
    DENSE_RANK() OVER(ORDER BY total_medals) AS rank_by_medals
FROM total_medal_calculated
ORDER BY rank_by_medals ASC, region
