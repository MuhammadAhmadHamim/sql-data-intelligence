/*
Calculate for each student their average grade and return the name and the average grade for each.
Name the columns student, grade.
Round the average to 2 decimal places and sort the result by the average grade in ascending order.
*/
SELECT students.name AS student,
       grades2.avg_grade AS grade
FROM students, 
     (SELECT student_id,
        ROUND(AVG(grade),2) AS avg_grade
        FROM grades
        GROUP BY student_id
    ) AS grades2
WHERE students.id = grades2.student_id
ORDER BY grade  
