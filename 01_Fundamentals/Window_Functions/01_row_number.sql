/*
Fetch all liquids with more than 5.677 density.

Number the result (use the ROW_NUMBER() function) and call this column row_num
*/
SELECT id, density,
    ROW_NUMBER() OVER() AS row_num
FROM liquids
WHERE density > 5.677;

/*
For each department:

Assign a row number to students based on marks (highest first)
*/
SELECT name, dept, marks,
    ROW_NUMBER() OVER(PARTITION BY dept ORDER BY marks DESC) AS rank
FROM Students;

/*
Same Table.

Get only the top student from each department.
*/
WITH Ranked_students AS (
    SELECT name, dept, marks
        ROW_NUMBER() OVER(PARTITION BY dept ORDER BY marks DESC) as rank
    FROM Students
)
SELECT *
FROM Ranked_students
WHERE rank = 1;