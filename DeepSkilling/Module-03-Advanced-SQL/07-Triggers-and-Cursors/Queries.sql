-- ===========================================
-- 07 - Triggers and Cursors
-- ===========================================

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Objects if They Already Exist
-------------------------------------------------

IF OBJECT_ID('StudentAudit', 'U') IS NOT NULL
    DROP TABLE StudentAudit;
GO

IF OBJECT_ID('StudentTriggerData', 'U') IS NOT NULL
    DROP TABLE StudentTriggerData;
GO

IF OBJECT_ID('trg_InsertStudent', 'TR') IS NOT NULL
    DROP TRIGGER trg_InsertStudent;
GO

-------------------------------------------------
-- Create Student Table
-------------------------------------------------

CREATE TABLE StudentTriggerData
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    Department VARCHAR(30),
    Marks INT
);
GO

-------------------------------------------------
-- Create Audit Table
-------------------------------------------------

CREATE TABLE StudentAudit
(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    StudentName VARCHAR(50),
    ActionPerformed VARCHAR(20),
    ActionDate DATETIME DEFAULT GETDATE()
);
GO

-------------------------------------------------
-- Create Trigger
-------------------------------------------------

CREATE TRIGGER trg_InsertStudent
ON StudentTriggerData
AFTER INSERT
AS
BEGIN

    INSERT INTO StudentAudit
    (
        StudentID,
        StudentName,
        ActionPerformed
    )

    SELECT
        StudentID,
        StudentName,
        'INSERT'
    FROM inserted;

END;
GO

-------------------------------------------------
-- Insert Records
-------------------------------------------------

INSERT INTO StudentTriggerData
VALUES
(101,'Hasikkha','CSE',95),
(102,'Krish','ECE',88),
(103,'Ani','IT',91);
GO

-------------------------------------------------
-- Display Student Table
-------------------------------------------------

SELECT * FROM StudentTriggerData;
GO

-------------------------------------------------
-- Display Audit Table
-------------------------------------------------

SELECT * FROM StudentAudit;
GO

-------------------------------------------------
-- Cursor Example
-------------------------------------------------

DECLARE @StudentName VARCHAR(50);

DECLARE StudentCursor CURSOR
FOR
SELECT StudentName
FROM StudentTriggerData;

OPEN StudentCursor;

FETCH NEXT FROM StudentCursor
INTO @StudentName;

WHILE @@FETCH_STATUS = 0
BEGIN

    PRINT 'Student Name : ' + @StudentName;

    FETCH NEXT FROM StudentCursor
    INTO @StudentName;

END;

CLOSE StudentCursor;

DEALLOCATE StudentCursor;
GO