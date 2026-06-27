/*
For this challenge, we have newspapers for production.
We would like to know the average newspapers that were printed two days before the current row and one day after.
Also, we would like to know the difference between the maximum and minimum number of newspapers 
printed from the current date and all three days before it.
Call these columns avg_newspapers and diff_newspapers respectively.
*/
SELECT date,
    AVG(num_newspapers) OVER(
            ROWS BETWEEN 2 PRECEDING AND 1 FOLLOWING
        ) AS avg_newspapers,
    MAX(num_newspapers) OVER(
            ORDER BY JULIANDAY(date)
            RANGE BETWEEN 3 PRECEDING AND CURRENT ROW
        ) - MIN(num_newspapers) OVER(
                ORDER BY JULIANDAY(date)
                RANGE BETWEEN 3 PRECEDING AND CURRENT ROW 
            ) AS diff_newspapers
FROM newspapers;