/*
We want to check if each box can fit inside the next box in sequence (where sequence is ordered by box_id).
A box can fit in the next box if the next box's size is greater than the current box.
Write a query to compare each box with the next box in sequence.
A box can fit into the next box if and only if the next box's size is strictly greater than the current box's size. 
Follow these steps:

-> Create a column named can_fit_next that shows:
    (i)  1 (true) if the box can fit into the next box
    (ii) 0 (false) if it cannot fit

-> The last box will automatically get NULL as there is no next box to compare with

-> Filter to show only the boxes that can fit into the next box (where can_fit_next = 1)

-> Return the box_id

-> Order the results by box_id in ascending order
*/
WITH calculated_table AS(
    SELECT box_id,
        CASE WHEN (LEAD(size, 1) OVER(ORDER BY box_id) - size) > 0 THEN 1 ELSE 0 END AS can_fit_next
    FROM boxes
)

SELECT box_id
FROM calulated_table
WHERE can_fit_next = 1
ORDER BY box_id ASC;