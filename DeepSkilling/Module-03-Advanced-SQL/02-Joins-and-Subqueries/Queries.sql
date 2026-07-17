-- ===========================================
-- 02 - Joins and Subqueries
-- ===========================================

USE CollegeDB;
GO

-- Drop tables if they already exist
IF OBJECT_ID('Enrollments', 'U') IS NOT NULL
    DROP TABLE Enrollments;

IF OBJECT_ID('Courses', 'U') IS NOT NULL
    DROP TABLE Courses;

IF OBJECT_ID('Students', 'U') IS NOT NULL
    DROP TABLE Students;

GO

-- Create Students Table
CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(30)
);

-- Create Courses Table
CREATE TABLE Courses
(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50)
);

-- Create Enrollments Table
CREATE TABLE Enrollments
(
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY(StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY(CourseID) REFERENCES Courses(CourseID)
);

-- Insert Students
INSERT INTO Students VALUES
(1,'Hasikkha','CSE'),
(2,'Krish','ECE'),
(3,'Ani','IT'),
(4,'Rahul','EEE');

-- Insert Courses
INSERT INTO Courses VALUES
(101,'SQL'),
(102,'Java'),
(103,'Python');

-- Insert Enrollments
INSERT INTO Enrollments VALUES
(1,1,101),
(2,1,102),
(3,2,103),
(4,3,101);

-------------------------------------------------
-- INNER JOIN
-------------------------------------------------

SELECT
S.StudentName,
C.CourseName
FROM Students S
INNER JOIN Enrollments E
ON S.StudentID=E.StudentID
INNER JOIN Courses C
ON E.CourseID=C.CourseID;

-------------------------------------------------
-- LEFT JOIN
-------------------------------------------------

SELECT
S.StudentName,
C.CourseName
FROM Students S
LEFT JOIN Enrollments E
ON S.StudentID=E.StudentID
LEFT JOIN Courses C
ON E.CourseID=C.CourseID;

-------------------------------------------------
-- RIGHT JOIN
-------------------------------------------------

SELECT
S.StudentName,
C.CourseName
FROM Students S
RIGHT JOIN Enrollments E
ON S.StudentID=E.StudentID
RIGHT JOIN Courses C
ON E.CourseID=C.CourseID;

-------------------------------------------------
-- FULL OUTER JOIN
-------------------------------------------------

SELECT
S.StudentName,
C.CourseName
FROM Students S
FULL OUTER JOIN Enrollments E
ON S.StudentID=E.StudentID
FULL OUTER JOIN Courses C
ON E.CourseID=C.CourseID;

-------------------------------------------------
-- CROSS JOIN
-------------------------------------------------

SELECT
StudentName,
CourseName
FROM Students
CROSS JOIN Courses;

-------------------------------------------------
-- SELF JOIN
-------------------------------------------------

SELECT
A.StudentName AS Student1,
B.StudentName AS Student2
FROM Students A
JOIN Students B
ON A.Department=B.Department
AND A.StudentID<>B.StudentID;

-------------------------------------------------
-- SUBQUERY
-------------------------------------------------

SELECT StudentName
FROM Students
WHERE StudentID IN
(
SELECT StudentID
FROM Enrollments
WHERE CourseID=101
);

-------------------------------------------------
-- AGGREGATE SUBQUERY
-------------------------------------------------

SELECT StudentName
FROM Students
WHERE StudentID=
(
SELECT MIN(StudentID)
FROM Students
);

-------------------------------------------------
-- EXISTS
-------------------------------------------------

SELECT StudentName
FROM Students S
WHERE EXISTS
(
SELECT *
FROM Enrollments E
WHERE S.StudentID=E.StudentID
);