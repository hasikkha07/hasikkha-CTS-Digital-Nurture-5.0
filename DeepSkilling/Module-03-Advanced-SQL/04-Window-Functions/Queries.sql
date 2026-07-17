-- ===========================================
-- 04 - Window Functions
-- ===========================================

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Employees Table if it Exists
-------------------------------------------------

IF OBJECT_ID('Employees', 'U') IS NOT NULL
DROP TABLE Employees;
GO

-------------------------------------------------
-- Create Employees Table
-------------------------------------------------

CREATE TABLE Employees
(
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);

-------------------------------------------------
-- Insert Records
-------------------------------------------------

INSERT INTO Employees VALUES
(101,'Hasikkha','CSE',70000),
(102,'Krish','ECE',65000),
(103,'Ani','IT',80000),
(104,'Rahul','CSE',75000),
(105,'Kiran','IT',90000),
(106,'Megha','ECE',72000);

-------------------------------------------------
-- Display Table
-------------------------------------------------

SELECT * FROM Employees;
GO

-------------------------------------------------
-- ROW_NUMBER()
-------------------------------------------------

SELECT
EmployeeID,
EmployeeName,
Department,
Salary,
ROW_NUMBER() OVER(ORDER BY Salary DESC) AS RowNumber
FROM Employees;
GO

-------------------------------------------------
-- RANK()
-------------------------------------------------

SELECT
EmployeeID,
EmployeeName,
Salary,
RANK() OVER(ORDER BY Salary DESC) AS RankNumber
FROM Employees;
GO

-------------------------------------------------
-- DENSE_RANK()
-------------------------------------------------

SELECT
EmployeeID,
EmployeeName,
Salary,
DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM Employees;
GO

-------------------------------------------------
-- NTILE()
-------------------------------------------------

SELECT
EmployeeID,
EmployeeName,
Salary,
NTILE(2) OVER(ORDER BY Salary DESC) AS GroupNumber
FROM Employees;
GO

-------------------------------------------------
-- LEAD()
-------------------------------------------------

SELECT
EmployeeName,
Salary,
LEAD(Salary) OVER(ORDER BY Salary DESC) AS NextSalary
FROM Employees;
GO

-------------------------------------------------
-- LAG()
-------------------------------------------------

SELECT
EmployeeName,
Salary,
LAG(Salary) OVER(ORDER BY Salary DESC) AS PreviousSalary
FROM Employees;
GO

-------------------------------------------------
-- ROW_NUMBER() with PARTITION
-------------------------------------------------

SELECT
EmployeeName,
Department,
Salary,
ROW_NUMBER() OVER
(
PARTITION BY Department
ORDER BY Salary DESC
) AS DepartmentRank
FROM Employees;
GO

-------------------------------------------------
-- RANK() with PARTITION
-------------------------------------------------

SELECT
EmployeeName,
Department,
Salary,
RANK() OVER
(
PARTITION BY Department
ORDER BY Salary DESC
) AS DepartmentRank
FROM Employees;
GO

-------------------------------------------------
-- DENSE_RANK() with PARTITION
-------------------------------------------------

SELECT
EmployeeName,
Department,
Salary,
DENSE_RANK() OVER
(
PARTITION BY Department
ORDER BY Salary DESC
) AS DepartmentRank
FROM Employees;
GO