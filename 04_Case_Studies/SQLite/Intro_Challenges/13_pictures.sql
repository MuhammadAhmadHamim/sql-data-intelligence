/*
We want to identify days where the artist used less resources (ink and colors) 
while still maintaining positive interest from people, 
while the artist should use less ink and less color to save costs. 
In this challenge, we would like to examine this hypothesis. Follow these steps:

-> Calculate the day-over-day difference for:

(i) ink_liters (name this column ink_diff)
(ii) colors_num (name this column colors_diff)

-> Filter the results to show only days where:

(i) ink_diff is negative (showing a decrease in ink usage)
(ii) colors_diff is negative (showing a decrease in colors used)
(iii) num_people_interested is greater than zero 
    (at least one person is interested in the picture — note that the data may contain days with zero interest)

-> Create a ranking column (day_rank) that:

(i) Ranks days from 1 to N based on num_people_interested
(ii) Higher number of interested people should get a lower rank (1 being the best)

-> Return:

(i) day_of_month
(ii) day_rank

-> Order the results by day_rank in ascending order
*/
WITH stats AS (
SELECT day_of_month,
    ink_liters - LAG(ink_liters, 1) OVER(ORDER BY day_of_month) AS ink_diff,
    colors_num - LAG(colors_num, 1) OVER(ORDER BY day_of_month) AS colors_diff
FROM picture_characteristics
)

SELECT stats.day_of_month,
    RANK() OVER (ORDER BY num_people_interested DESC) AS day_rank
FROM stats
JOIN picture_interests AS pii ON pii.day_of_month = stats.day_of_month
WHERE ink_diff < 0 AND colors_diff < 0 AND num_people_interested > 0
ORDER BY day_rank ASC;