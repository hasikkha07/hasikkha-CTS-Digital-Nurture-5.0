-- ===========================================
-- 06 - Stored Procedures and User Defined Functions
-- ===========================================

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Objects if They Already Exist
-------------------------------------------------

IF OBJECT_ID('GetAllStudents', 'P') IS NOT NULL
    DROP PROCEDURE GetAllStudents;
GO

IF OBJECT_ID('GetStudentByDepartment', 'P') IS NOT NULL
    DROP PROCEDURE GetStudentByDepartment;
GO

IF OBJECT_ID('GetGrade', 'FN') IS NOT NULL
    DROP FUNCTION GetGrade;
GO

IF OBJECT_ID('GetCSEStudents', 'IF') IS NOT NULL
    DROP FUNCTION GetCSEStudents;
GO

IF OBJECT_ID('StudentRecords', 'U') IS NOT NULL
    DROP TABLE StudentRecords;
GO

-------------------------------------------------
-- Create Table
-------------------------------------------------

CREATE TABLE StudentRecords
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(30),
    Marks INT
);
GO

-------------------------------------------------
-- Insert Records
-------------------------------------------------

INSERT INTO StudentRecords
VALUES
(101,'Hasikkha','CSE',95),
(102,'Krish','ECE',88),
(103,'Ani','IT',91),
(104,'Rahul','CSE',76),
(105,'Megha','ECE',82);
GO

-------------------------------------------------
-- Display Records
-------------------------------------------------

SELECT * FROM StudentRecords;
GO

-------------------------------------------------
-- Stored Procedure without Parameters
-------------------------------------------------

CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT * FROM StudentRecords;
END;
GO

-------------------------------------------------
-- Execute Procedure
-------------------------------------------------

EXEC GetAllStudents;
GO

-------------------------------------------------
-- Stored Procedure with Parameter
-------------------------------------------------

CREATE PROCEDURE GetStudentByDepartment
    @Department VARCHAR(30)
AS
BEGIN
    SELECT *
    FROM StudentRecords
    WHERE Department=@Department;
END;
GO

-------------------------------------------------
-- Execute Parameterized Procedure
-------------------------------------------------

EXEC GetStudentByDepartment 'CSE';
GO

-------------------------------------------------
-- Scalar Function
-------------------------------------------------

CREATE FUNCTION GetGrade
(
    @Marks INT
)
RETURNS VARCHAR(10)
AS
BEGIN

    DECLARE @Grade VARCHAR(10);

    IF @Marks>=90
        SET @Grade='A';
    ELSE IF @Marks>=80
        SET @Grade='B';
    ELSE IF @Marks>=70
        SET @Grade='C';
    ELSE
        SET @Grade='D';

    RETURN @Grade;

END;
GO

-------------------------------------------------
-- Execute Scalar Function
-------------------------------------------------

SELECT
StudentName,
Marks,
dbo.GetGrade(Marks) AS Grade
FROM StudentRecords;
GO

-------------------------------------------------
-- Table-Valued Function
-------------------------------------------------

CREATE FUNCTION GetCSEStudents()
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM StudentRecords
    WHERE Department='CSE'
);
GO

-------------------------------------------------
-- Execute Table-Valued Function
-------------------------------------------------

SELECT *
FROM dbo.GetCSEStudents();
GO