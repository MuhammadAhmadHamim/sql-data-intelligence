/*
🎯 Scenario: University Mini System

Step 1 — CREATE

Create:

(i)   Students
(ii)  Courses
(iii) Enrollments

With:

-> PK
-> FK
-> Constraints

Step 2 — INSERT

-> Add 5 students
-> Add 3 courses
-> Add enrollments

Step 3 — UPDATE

-> Increase marks of all students in one course
-> Promote students (increase CGPA)

Step 4 — DELETE

-> Remove an enrollment
*/

CREATE DATABASE university;

USE university;

CREATE TABLE Students(
	regNumber INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    dept VARCHAR(10) DEFAULT 'CS',
    cgpa FLOAT CHECK(cgpa BETWEEN 0.0 AND 4.0)
);

CREATE TABLE Courses (
    course_code VARCHAR(7) PRIMARY KEY,
    title VARCHAR(20) NOT NULL,
    credit_hours INT CHECK (credit_hours BETWEEN 1 AND 4),
    dept VARCHAR(10) DEFAULT 'CS'
);

CREATE TABLE Enrollments (
    regNumber INT NOT NULL,
    CONSTRAINT FOREIGN KEY(regNumber) REFERENCES Students(regNumber),
    course_code VARCHAR(7) NOT NULL,
    CONSTRAINT FOREIGN KEY(course_code) REFERENCES Courses(course_code)
);

INSERT INTO Students(regNumber, name, dept, cgpa)
VALUES
	(1, 'Ace', DEFAULT, 3.9),
    (2, 'Luffy', 'CE', 3.5), 
    (3, 'Zoro', 'ME', 3.0),
    (4, 'Nami', DEFAULT, 3.8), 
    (5, 'Sanji', 'CULINARY', 3.7), 
    (6, 'Brook', 'MUSIC', 1.1), 
    (7, 'Robin', 'ARCHY', 3.0),
    (8, 'Chopper', DEFAULT, 3.9);

INSERT INTO Courses (course_code, title, credit_hours, dept)
VALUES 
    ('CS101', 'Intro to Hacking', 4, DEFAULT), 
    ('ME202', 'Ship Construction', 3, 'ME'), 
    ('PE100', 'Gymnastics', 1, 'ATH'), 
    ('MD303', 'Emergency Surgery', 4, 'MED'),
    ('CS202', 'Data Structures', 4, DEFAULT);
    
INSERT into enrollments(regNumber, course_code)
VALUES
	(2, 'CS101'),
    (5, 'MD303'),
    (2, 'ME202');

-- Using the alter command since i forgot to add marks in course table    
ALTER TABLE enrollments
ADD marks INT CHECK(marks >= 0);

UPDATE enrollments
SET marks = 10
WHERE course_code LIKE 'CS%';

UPDATE students
SET cgpa = cgpa + 0.1
WHERE regNumber IN (
	SELECT regNumber FROM enrollments
);

DELETE FROM enrollments 
WHERE regNumber = 5;

DELETE FROM students
where regNumber = 5;

SELECT * 
FROM students;