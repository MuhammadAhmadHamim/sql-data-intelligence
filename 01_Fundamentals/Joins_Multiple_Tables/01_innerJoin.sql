/*
Create a query that fetches student_name, course_id, student_id and grade in one table. 
Order the result by grade in ascending order.
*/
SELECT students.name AS student_name,
       grades.course_id AS course_id,
       students.id AS student_id,
       grades.grade
FROM students 
JOIN grades ON students.id = grades.student_id
ORDER BY grades.grade ASC
