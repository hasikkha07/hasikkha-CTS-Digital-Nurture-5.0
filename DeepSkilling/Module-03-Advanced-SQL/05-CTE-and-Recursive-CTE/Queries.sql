-- ===========================================
-- 05 - CTE and Recursive CTE
-- ===========================================

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Employee Table if Exists
-------------------------------------------------

IF OBJECT_ID('EmployeeHierarchy', 'U') IS NOT NULL
DROP TABLE EmployeeHierarchy;
GO

-------------------------------------------------
-- Create EmployeeHierarchy Table
-------------------------------------------------

CREATE TABLE EmployeeHierarchy
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    ManagerID INT
);

-------------------------------------------------
-- Insert Records
-------------------------------------------------

INSERT INTO EmployeeHierarchy VALUES
(1,'CEO',NULL),
(2,'Manager A',1),
(3,'Manager B',1),
(4,'Employee A1',2),
(5,'Employee A2',2),
(6,'Employee B1',3),
(7,'Employee B2',3);

-------------------------------------------------
-- Display Table
-------------------------------------------------

SELECT * FROM EmployeeHierarchy;
GO

-------------------------------------------------
-- Simple CTE
-------------------------------------------------

WITH EmployeeCTE AS
(
    SELECT
        EmployeeID,
        EmployeeName,
        ManagerID
    FROM EmployeeHierarchy
)

SELECT *
FROM EmployeeCTE;
GO

-------------------------------------------------
-- CTE with WHERE Clause
-------------------------------------------------

WITH ManagerCTE AS
(
    SELECT
        EmployeeID,
        EmployeeName,
        ManagerID
    FROM EmployeeHierarchy
    WHERE ManagerID IS NOT NULL
)

SELECT *
FROM ManagerCTE;
GO

-------------------------------------------------
-- Recursive CTE
-------------------------------------------------

WITH EmployeeTree AS
(
    -- Anchor Member

    SELECT
        EmployeeID,
        EmployeeName,
        ManagerID,
        1 AS Level
    FROM EmployeeHierarchy
    WHERE ManagerID IS NULL

    UNION ALL

    -- Recursive Member

    SELECT
        E.EmployeeID,
        E.EmployeeName,
        E.ManagerID,
        ET.Level + 1
    FROM EmployeeHierarchy E
    INNER JOIN EmployeeTree ET
        ON E.ManagerID = ET.EmployeeID
)

SELECT *
FROM EmployeeTree
ORDER BY Level, EmployeeID;
GO

-------------------------------------------------
-- Count Employees under each Manager
-------------------------------------------------

WITH ManagerCount AS
(
    SELECT
        ManagerID,
        COUNT(*) AS TotalEmployees
    FROM EmployeeHierarchy
    WHERE ManagerID IS NOT NULL
    GROUP BY ManagerID
)

SELECT *
FROM ManagerCount;
GO