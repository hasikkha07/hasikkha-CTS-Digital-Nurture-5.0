USE CollegeDB;
GO

-------------------------------------------------
-- Drop Views if they already exist
-------------------------------------------------

IF OBJECT_ID('StudentView', 'V') IS NOT NULL
    DROP VIEW StudentView;
GO

IF OBJECT_ID('CSEStudents', 'V') IS NOT NULL
    DROP VIEW CSEStudents;
GO

-------------------------------------------------
-- Create StudentView
-------------------------------------------------

CREATE VIEW StudentView
AS
SELECT
    StudentID,
    StudentName,
    Department
FROM Students;
GO

SELECT * FROM StudentView;
GO

-------------------------------------------------
-- Create CSEStudents View
-------------------------------------------------

CREATE VIEW CSEStudents
AS
SELECT
    StudentID,
    StudentName,
    Department
FROM Students
WHERE Department = 'CSE';
GO

SELECT * FROM CSEStudents;
GO

-------------------------------------------------
-- Update using View
-------------------------------------------------

UPDATE StudentView
SET Department='IT'
WHERE StudentID=1;
GO

SELECT * FROM StudentView;
GO

-------------------------------------------------
-- Create Indexes
-------------------------------------------------

CREATE NONCLUSTERED INDEX IX_StudentName
ON Students(StudentName);
GO

CREATE NONCLUSTERED INDEX IX_Department_Name
ON Students(Department, StudentName);
GO

-------------------------------------------------
-- Show Indexes
-------------------------------------------------

EXEC sp_helpindex 'Students';
GO

-------------------------------------------------
-- Search Query
-------------------------------------------------

SELECT *
FROM Students
WHERE StudentName='Hasikkha';
GO

-------------------------------------------------
-- Drop Indexes
-------------------------------------------------

DROP INDEX IX_StudentName ON Students;
GO

DROP INDEX IX_Department_Name ON Students;
GO