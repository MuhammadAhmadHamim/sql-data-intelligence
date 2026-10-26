-- Database Lab Midterm, Fall 2026

CREATE DATABASE test;

USE test;

-- Practice queries
/*
Q1:
Write an SQL query to create a table named Student with the following columns:
Column		Requirement
StudentID	Integer, primary key
FullName	Variable-length string, maximum 50 characters, cannot be NULL
Age			Integer
Department	Variable-length string, maximum 30 characters
*/
CREATE TABLE Student(
	StudentID INT,
    FullName VARCHAR(50) NOT NULL,
    Age INT,
    Department VARCHAR(30),
    
    PRIMARY KEY(StudentID)
);

/*
Q2:
You have the Student table from the previous question.

Task A: Insert the following two records into Student.

StudentID	FullName	Age	Department
101			Ali Khan	20	Software Engineering
102			Sara Ahmed	21	Computer Science

Task B: Write a query to retrieve all columns and all records from the Student table.
*/
-- Task A
INSERT INTO Student(StudentID, FullName, Age, Department)
VALUES(101, 'Ali Khan', 20, 'Software Engineering'),
		(102, 'Sara Khan', 21, 'Computer Science');

-- Task B
SELECT *
FROM Student;

/*
Q3:
You have your existing Student table.

Task A: Write a query to add a new column named Email with data type VARCHAR(100).

Task B: Write a query to modify the Age column so that it becomes NOT NULL.

Write both SQL statements, man. Remember: we're changing the structure of the table, not inserting or updating student records.
*/
-- Task A
ALTER TABLE Student
ADD Email VARCHAR(100);

-- Task B
ALTER TABLE Student
MODIFY Age INT NOT NULL;

/*
Q4:
Time to test whether those commands are truly distinct in your mind.

You have a table named Student, and the following tasks arise:

Task A: Delete only the student whose StudentID is 102, keeping the table and all other students intact.

Task B: Remove the Email column from the table while preserving the rest of the table and its records.
*/
-- Task A
DELETE FROM Student
WHERE StudentID = 102;

-- Task B
ALTER TABLE Student
DROP Email;

/*
Q5:
Suppose the Student table contains these records:

StudentID	FullName	Age	Department
101			Ali Khan	20	Software Engineering
102			Sara Ahmed	21	Computer Science
103			Hamza Ali	19	Software Engineering
104			Ayesha Noor	22	Information Technology
105			Bilal Ahmed	20	Computer Science
106			Zain Malik	23	Software Engineering

Task: Write a query to retrieve the FullName, Age, and Department of students who satisfy either of these conditions:
1. Their age is greater than 20 and their department is Software Engineering.
2. Their age is less than 20.

Finally, sort the results by age in descending order.

Requirements:
- Use WHERE, AND, and OR.
- Use ORDER BY.
- Return only the three requested columns.
*/
SELECT FullName, Age, Department
FROM Student
WHERE (Age > 20 AND Department = 'Software Engineering') OR Age < 20
ORDER BY Age DESC;

/*
Q6:
Using the same Student table, 
write a query to retrieve all columns for students who belong to either the Software Engineering or Computer Science department.

Requirements:
- Use the IN operator.
- Sort the results alphabetically by FullName in ascending order.
*/
SELECT *
FROM Student
WHERE Department IN ('Software Engineering', 'Computer Science')
ORDER BY FullName;

/*
Q7:
Suppose the Student table contains the following data:
StudentID	FullName	 Age	Department
101			Ali Khan	 20		Software Engineering
102			Sara Ahmed	 21		Computer Science
103			Hamza Ali	 19		Software Engineering
104			Ayesha Noor	 22		Information Technology
105			Bilal Ahmed	 20		Computer Science
106			Zain Malik	 23		Software Engineering
107			Fatima Zahra 21		Computer Science
108			Usman Tariq	 19		Information Technology

Your mission:
Write an SQL query to display each department alongside the number of students belonging to it.

Your output should have two columns:
- Department
- TotalStudents
Sort the results by TotalStudents in descending order.

Requirements: Use COUNT() and GROUP BY.
*/
SELECT Department,
	COUNT(StudentID) AS TotalStudents
FROM Student
GROUP BY Department
ORDER BY TotalStudents DESC;

/*
Q8:
Using the same Student table, write a query to display the department and number of students only for departments that have at least three students.

Your output must contain:
- Department
- TotalStudents

Sort the results by TotalStudents in descending order.

Requirements:
- Use COUNT().
- Use GROUP BY.
- Use HAVING.

Be careful: we're filtering departments based on the number of students in each group, not filtering individual students.
*/
SELECT Department,
	COUNT(StudentID) AS TotalStudents
FROM Student
GROUP BY Department
HAVING TotalStudents >= 3
ORDER BY TotalStudents DESC;

/*
Q9:
Using the same Student table, write a query that displays each department and its average student age, but:
- Only consider students aged 20 or older.
- Show only departments whose average age is greater than 20.
- Name the calculated column AverageAge.
- Sort by AverageAge in descending order.

Use WHERE, GROUP BY, HAVING, and ORDER BY.
*/
SELECT Department, 
	AVG(Age) AS AverageAge
FROM Student
WHERE Age >= 20
GROUP BY Department
HAVING AVG(Age) > 20
ORDER BY AverageAge DESC;

/*
Q10:
Time to work with UPPER(), LOWER(), LENGTH(), LEFT(), RIGHT(), MID(), concatenation, and LIKE.

Using the same Student table, write a query that displays:
1. FullName in uppercase, labelled UpperName.
2. The first 3 characters of FullName, labelled FirstThree.
3. The last 3 characters of FullName, labelled LastThree.
4. The length of FullName, labelled NameLength.

Conditions:
- Only include students whose names end with 'i'.
- Sort by NameLength in ascending order.

Use the appropriate string functions and LIKE.
*/
SELECT
	UPPER(FullName) AS UpperName,
    LEFT(FullName, 3) AS FirstThree,
    RIGHT(FullName, 3) AS LastThree,
    LENGTH(FullName) AS NameLength
FROM Student
WHERE FullName LIKE '%i'
ORDER BY NameLength;

/*
Q11:
Using the same Student table, write a query displaying:
- FullName
- The first name's first three characters, labelled NamePart, using MID()
- The student's name in lowercase, labelled LowerName
- A combined value containing FullName, a hyphen (-), and Department, labelled StudentInfo

Condition: Only include students whose names contain 'an' anywhere in the name.

Sort the results alphabetically by FullName.

Use MID(), LOWER(), concatenation, and LIKE.
*/
SELECT FullName,
	MID(FullName, 1, 4) AS NamePart,
    LOWER(FullName) AS LowerName,
    CONCAT(FullName, ' - ', Department) AS StudentInfo
FROM Student
WHERE FullName LIKE '%an%'
ORDER BY FullName;

/*
Q12:
Using the same Student table, write a query to display each department and the number of students in it, but:
- Consider only students whose names contain 'a', regardless of case.
- Show only departments with at least two qualifying students.
- Label the count TotalStudents.
- Sort by the count in descending order.

Use LOWER(), LIKE, COUNT(), GROUP BY, and HAVING.
*/
SELECT Department, COUNT(StudentID) AS TotalStudents
FROM Student
WHERE LOWER(FullName) LIKE '%a%'
GROUP BY Department
HAVING COUNT(StudentID) >= 2
ORDER BY TotalStudents DESC;

/*
Q13:
Suppose we have these tables:

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FullName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

The Department table currently contains only these records:
DepartmentID	DepartmentName
10				Software Engineering
20				Computer Science

Task: Write an INSERT query to add a student with:
- StudentID: 201
- FullName: Hassan Ali
- DepartmentID: 30

There is deliberately a catch: DepartmentID = 30 does not currently exist in the parent table.

Write the query you would execute, then tell me whether it succeeds or fails and why.
*/
INSERT INTO Student(StudentID, FullName, DepartmentID)
VALUES (201, 'Hassan Ali', 30);

/*
Q14:
The Department table contains:
DepartmentID	DepartmentName
10				Software Engineering
20				Computer Science

And the Student table contains:
StudentID	FullName	DepartmentID
201			Hassan Ali	10
202			Sara Ahmed	20

Assume the foreign key uses the default restrictive behavior—no cascading delete.

Task: Write the SQL query to delete the department with DepartmentID = 10. Then explain whether it succeeds or fails and why.
*/
DELETE FROM Department
WHERE DepartmentID = 10;

/*
Q15:
Assume these tables already exist:
- Department(DepartmentID, DepartmentName) — DepartmentID is the primary key.
- Student(StudentID, FullName, DepartmentID) — StudentID is the primary key, and DepartmentID is a foreign key referencing Department.

Existing data:

Department
DepartmentID	DepartmentName
10				Software Engineering
20				Computer Science

Student
StudentID	FullName	DepartmentID
201			Hassan Ali	10
202			Sara Ahmed	20

Your task
Write an INSERT query attempting to add:
- StudentID: 201
- FullName: Bilal Khan
- DepartmentID: 20
Then tell me which constraint is violated and why.
*/
INSERT INTO Student(StudentID, FullName, DepartmentID)
VALUES(201, 'Bilal Khan', 20);

/*
Assume the Student table contains the following names:
- Ali Khan
- Sara Ahmed
- Hamza Ali
- Ayesha Noor
- Bilal Ahmed
- Zain Malik
- Usman Tariq

Task: Write a query that retrieves all columns for students whose FullName:

1. Starts with A.
2. Has exactly one character followed by li at the beginning of the name.

Both conditions should be satisfied by the same name.

Sort the results by FullName alphabetically.

Hint: Remember the difference between % and _ in LIKE patterns.
*/
SELECT *
FROM Student
WHERE FullName LIKE 'A%' AND FullName LIKE '_li%'
ORDER BY FullName;

/*
Q17:
Using the Student table with StudentID, FullName, Age, and Department, 
write a query that displays each department and the number of students whose names end with 'i', 
but only for departments with at least one such student.

Requirements:
- Use LIKE.
- Use COUNT().
- Use GROUP BY.

- Sort the results by department name alphabetically.
*/
SELECT Department, COUNT(StudentID)
FROM Student
WHERE FullName LIKE '%i'
GROUP BY Department
HAVING COUNT(StudentID) >= 1
ORDER BY Department;