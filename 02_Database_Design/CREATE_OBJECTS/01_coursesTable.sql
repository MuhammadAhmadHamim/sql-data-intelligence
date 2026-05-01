/*
Challenge — CREATE

👉 Create a table Courses:

-> course_id → primary key
-> title → not null
-> credit_hours → must be between 1 and 4
-> dept → default = 'CS'
*/
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    title VARCHAR(20) NOT NULL,
    credit_hours INT CHECK (credit_hours BETWEEN 1 AND 4),
    dept VARCHAR(10) DEFAULT 'CS'
);