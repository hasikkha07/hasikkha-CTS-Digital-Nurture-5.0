-- ===========================================
-- Module 03 - DDL and DML
-- ===========================================

-------------------------------------------------
-- Create Database
-------------------------------------------------

IF DB_ID('CollegeDB') IS NULL
BEGIN
    CREATE DATABASE CollegeDB;
END;
GO

-------------------------------------------------
-- Use Database
-------------------------------------------------

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Existing Tables
-------------------------------------------------

IF OBJECT_ID('dbo.Students', 'U') IS NOT NULL
    DROP TABLE dbo.Students;
GO

IF OBJECT_ID('dbo.Student', 'U') IS NOT NULL
    DROP TABLE dbo.Student;
GO

-------------------------------------------------
-- Create Student Table
-------------------------------------------------

CREATE TABLE dbo.Student
(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Age INT,
    Marks INT
);
GO

-------------------------------------------------
-- View Table Structure
-------------------------------------------------

EXEC sp_help 'Student';
GO

-------------------------------------------------
-- Add Column
-------------------------------------------------

ALTER TABLE dbo.Student
ADD Email VARCHAR(100);
GO

-------------------------------------------------
-- Modify Column
-------------------------------------------------

ALTER TABLE dbo.Student
ALTER COLUMN Name VARCHAR(100);
GO

-------------------------------------------------
-- Drop Column
-------------------------------------------------

ALTER TABLE dbo.Student
DROP COLUMN Email;
GO

-------------------------------------------------
-- Rename Table
-------------------------------------------------

EXEC sp_rename 'dbo.Student', 'Students';
GO

-------------------------------------------------
-- Truncate Table
-------------------------------------------------

TRUNCATE TABLE dbo.Students;
GO

-------------------------------------------------
-- Drop Table
-------------------------------------------------

DROP TABLE dbo.Students;
GO

-- ===========================================
-- DML
-- ===========================================

-------------------------------------------------
-- Create Students Table Again
-------------------------------------------------

CREATE TABLE dbo.Students
(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Marks INT
);
GO

-------------------------------------------------
-- Insert Records
-------------------------------------------------

INSERT INTO dbo.Students
(StudentID, Name, Department, Marks)
VALUES
(101,'Hasikkha','CSE',95),
(102,'Krish','ECE',88),
(103,'Ani','IT',91);
GO

-------------------------------------------------
-- Display Records
-------------------------------------------------

SELECT *
FROM dbo.Students;
GO

-------------------------------------------------
-- Update Record
-------------------------------------------------

UPDATE dbo.Students
SET Marks = 98
WHERE StudentID = 101;
GO

-------------------------------------------------
-- Delete Record
-------------------------------------------------

DELETE FROM dbo.Students
WHERE StudentID = 102;
GO

-------------------------------------------------
-- Display Final Records
-------------------------------------------------

SELECT *
FROM dbo.Students;
GO