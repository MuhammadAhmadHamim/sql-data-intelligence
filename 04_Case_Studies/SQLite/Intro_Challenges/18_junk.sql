/*
In this challenge, we have a junk table.

For each junk_id we would like to add the following columns:

-> even_num - row number from 2 to 2*n (n is the number of rows in the table) in jumps of 2: 2, 4, 6, 8, etc., 
    ordered by junk_id
-> num_piece - represents a group (using NTILE) that goes from 3 to 9 in jumps of 3: 3, 6, 9 (only 3 groups).
-> avg_id - the average id of the current row and the 2 rows before it only in the same group
-> piece_rank - dense rank of each group order by the avg_id
*/
WITH first_cal AS (
    SELECT junk_id, 
        2 * ROW_NUMBER() OVER(ORDER BY junk_id) AS even_num,
        3 * NTILE(3) OVER(ORDER BY junk_id) AS num_piece
    FROM junk
), second_cal AS (
    SELECT junk_id, even_num, num_piece,
        AVG(junk_id) OVER(
            PARTITION BY num_piece
            ORDER BY junk_id
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ) AS avg_id
    FROM first_cal
)

SELECT junk_id, even_num, num_piece, avg_id,
    DENSE_RANK() OVER(PARTITION BY num_piece ORDER BY avg_id) AS piece_rank
FROM second_cal
ORDER BY junk_id;