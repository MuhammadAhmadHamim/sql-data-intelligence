/*
🎯 Challenge — INSERT

👉 Insert 3 students after creating a simple Students table:

-> One with full data
-> One using default values
-> One that tests CHECK constraint (edge case)
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
    (3, 'Zoro', 'ME', 4.0); -- Lowered to 4.0 to pass the CHECK constraint since cgpa can't be above 4.0 