/*
🎯 Challenge — DELETE

Create a Student table and add some sample data in it. Then,
👉 Perform:

(i)  Delete students with cgpa < 2
(ii) Delete a specific student by ID

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

-- (i)....
DELETE FROM Student
WHERE cgpa < 2.0;

-- (ii)...
DELETE FROM Student
WHERE student_id = 2;