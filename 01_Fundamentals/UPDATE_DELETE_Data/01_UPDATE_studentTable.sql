/*
🎯 Challenge — UPDATE

Create a Student table and add some sample data in it. Then,
👉 Perform:

(i)   Increase CGPA of all CS students by 0.2
(ii)  Change dept of a specific student
(iii) Set CGPA = 4.0 for top performer

*/
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    dept VARCHAR(10) DEFAULT 'CS',
    -- FLOAT to allow decimal values 
    cgpa FLOAT CHECK (cgpa BETWEEN 0.0 AND 4.0) 
);

INSERT INTO Student (student_id, name, dept, cgpa)
VALUES 
    (1, 'Ace', DEFAULT, 3.9), -- Default case = 'CS'
    (2, 'Luffy', 'CE', 3.5), 
    (3, 'Zoro', 'ME', 4.0);

-- (i).....

UPDATE Student
SET cgpa = cgpa + 0.2
WHERE dept = 'CS';

-- (ii).....

UPDATE Student
SET dept = 'BBA'
WHERE name = 'Ace';

-- (iii)....

UPDATE Student
SET cgpa = 4.0
WHERE cgpa = (
    SELECT MAX(cgpa)
    FROM Student
)