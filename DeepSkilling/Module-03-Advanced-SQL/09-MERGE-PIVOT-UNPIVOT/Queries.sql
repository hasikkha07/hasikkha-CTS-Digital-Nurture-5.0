-- ===========================================
-- 09 - MERGE, PIVOT and UNPIVOT
-- ===========================================

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Tables if They Already Exist
-------------------------------------------------

IF OBJECT_ID('StudentMarks', 'U') IS NOT NULL
    DROP TABLE StudentMarks;
GO

IF OBJECT_ID('UpdatedMarks', 'U') IS NOT NULL
    DROP TABLE UpdatedMarks;
GO

-------------------------------------------------
-- Create StudentMarks Table
-------------------------------------------------

CREATE TABLE StudentMarks
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Subject VARCHAR(30),
    Marks INT
);
GO

-------------------------------------------------
-- Create UpdatedMarks Table
-------------------------------------------------

CREATE TABLE UpdatedMarks
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Subject VARCHAR(30),
    Marks INT
);
GO

-------------------------------------------------
-- Insert Records into StudentMarks
-------------------------------------------------

INSERT INTO StudentMarks VALUES
(101,'Hasikkha','SQL',85),
(102,'Krish','Java',78),
(103,'Ani','Python',92);
GO

-------------------------------------------------
-- Insert Records into UpdatedMarks
-------------------------------------------------

INSERT INTO UpdatedMarks VALUES
(101,'Hasikkha','SQL',90),
(102,'Krish','Java',80),
(104,'Rahul','Python',88);
GO

-------------------------------------------------
-- Display Tables
-------------------------------------------------

SELECT * FROM StudentMarks;
SELECT * FROM UpdatedMarks;
GO

-------------------------------------------------
-- MERGE Operation
-------------------------------------------------

MERGE StudentMarks AS Target
USING UpdatedMarks AS Source
ON Target.StudentID = Source.StudentID

WHEN MATCHED THEN
UPDATE SET
    Target.StudentName = Source.StudentName,
    Target.Subject = Source.Subject,
    Target.Marks = Source.Marks

WHEN NOT MATCHED THEN
INSERT
(
    StudentID,
    StudentName,
    Subject,
    Marks
)
VALUES
(
    Source.StudentID,
    Source.StudentName,
    Source.Subject,
    Source.Marks
);

GO

-------------------------------------------------
-- Display MERGE Result
-------------------------------------------------

SELECT * FROM StudentMarks;
GO

-------------------------------------------------
-- Create Sales Table
-------------------------------------------------

IF OBJECT_ID('Sales', 'U') IS NOT NULL
    DROP TABLE Sales;
GO

CREATE TABLE Sales
(
    EmployeeName VARCHAR(50),
    Quarter VARCHAR(10),
    Amount INT
);
GO

-------------------------------------------------
-- Insert Sales Records
-------------------------------------------------

INSERT INTO Sales VALUES
('Hasikkha','Q1',12000),
('Hasikkha','Q2',15000),
('Krish','Q1',11000),
('Krish','Q2',13500),
('Ani','Q1',14000),
('Ani','Q2',16000);
GO

-------------------------------------------------
-- Display Sales Table
-------------------------------------------------

SELECT * FROM Sales;
GO

-------------------------------------------------
-- PIVOT
-------------------------------------------------

SELECT *
FROM
(
    SELECT EmployeeName, Quarter, Amount
    FROM Sales
) AS SourceTable

PIVOT
(
    SUM(Amount)
    FOR Quarter IN ([Q1],[Q2])
) AS PivotTable;
GO

-------------------------------------------------
-- UNPIVOT
-------------------------------------------------

SELECT
EmployeeName,
Quarter,
Amount
FROM
(
    SELECT EmployeeName,Q1,Q2
    FROM
    (
        SELECT EmployeeName,Quarter,Amount
        FROM Sales
    ) AS SourceTable

    PIVOT
    (
        SUM(Amount)
        FOR Quarter IN ([Q1],[Q2])
    ) AS PivotTable
) AS P

UNPIVOT
(
    Amount FOR Quarter IN (Q1,Q2)
) AS UnpivotTable;
GO