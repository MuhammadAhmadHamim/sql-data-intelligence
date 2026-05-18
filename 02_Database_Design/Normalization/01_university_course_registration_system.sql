-- CASE STUDY — University Course Registration System

/*
Problems in UNF:
-> Student data repeated
-> Course data repeated
-> Teacher data repeated
-> Teacher office depends on teacher
-> Massive redundancy
*/

-- UNF (Unnormalized Form)

CREATE TABLE Registration_Record(
    Student_ID INT,
    Student_Name VARCHAR(20),
    Department VARCHAR(7),

    Course_ID INT,
    Course_Name VARCHAR(20) NOT NULL,

    Teacher_Name VARCHAR(20),
    Teacher_Office VARCHAR(10),

    Marks INT NOT NULL,

    PRIMARY KEY(Student_ID, Course_ID)
);

-- 1NF
-- Rule:
-- Remove repeating groups and ensure atomic values.

CREATE TABLE Registration_Record_1NF(
    Student_ID INT,
    Student_Name VARCHAR(20),
    Department VARCHAR(7),

    Course_ID INT,
    Course_Name VARCHAR(20) NOT NULL,

    Teacher_Name VARCHAR(20),
    Teacher_Office VARCHAR(10),

    Marks INT NOT NULL,

    PRIMARY KEY(Student_ID, Course_ID)
);

-- 2NF
-- Rule:
-- Remove partial dependency.

CREATE TABLE Student(
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(20) NOT NULL,
    Department VARCHAR(7)
);

CREATE TABLE Course(
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(20) NOT NULL,
    Teacher_Name VARCHAR(20),
    Teacher_Office VARCHAR(10)
);

CREATE TABLE Registration(
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Marks INT NOT NULL,

    PRIMARY KEY(Student_ID, Course_ID),

    FOREIGN KEY(Student_ID)
    REFERENCES Student(Student_ID),

    FOREIGN KEY(Course_ID)
    REFERENCES Course(Course_ID)
);

-- 3NF
-- Rule:
-- Remove transitive dependency.

CREATE TABLE Teacher(
    Teacher_ID INT PRIMARY KEY,
    Teacher_Name VARCHAR(20) NOT NULL,
    Teacher_Office VARCHAR(10)
);

CREATE TABLE Course_3NF(
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(20) NOT NULL,

    Teacher_ID INT NOT NULL,

    FOREIGN KEY(Teacher_ID)
    REFERENCES Teacher(Teacher_ID)
);

CREATE TABLE Registration_3NF(
    Student_ID INT NOT NULL,
    Course_ID INT NOT NULL,
    Marks INT NOT NULL,

    PRIMARY KEY(Student_ID, Course_ID),

    FOREIGN KEY(Student_ID)
    REFERENCES Student(Student_ID),

    FOREIGN KEY(Course_ID)
    REFERENCES Course_3NF(Course_ID)
);