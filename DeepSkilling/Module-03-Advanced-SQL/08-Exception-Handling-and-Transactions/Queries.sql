-- ===========================================
-- 08 - Exception Handling and Transactions
-- ===========================================

USE CollegeDB;
GO

-------------------------------------------------
-- Drop Table if Exists
-------------------------------------------------

IF OBJECT_ID('BankAccounts', 'U') IS NOT NULL
DROP TABLE BankAccounts;
GO

-------------------------------------------------
-- Create Table
-------------------------------------------------

CREATE TABLE BankAccounts
(
    AccountID INT PRIMARY KEY,
    AccountHolder VARCHAR(50),
    Balance DECIMAL(10,2)
);
GO

-------------------------------------------------
-- Insert Records
-------------------------------------------------

INSERT INTO BankAccounts VALUES
(101,'Hasikkha',50000),
(102,'Krish',35000),
(103,'Ani',45000);
GO

-------------------------------------------------
-- Display Records
-------------------------------------------------

SELECT * FROM BankAccounts;
GO

-------------------------------------------------
-- Successful Transaction
-------------------------------------------------

BEGIN TRANSACTION;

UPDATE BankAccounts
SET Balance = Balance - 5000
WHERE AccountID = 101;

UPDATE BankAccounts
SET Balance = Balance + 5000
WHERE AccountID = 102;

COMMIT TRANSACTION;
GO

-------------------------------------------------
-- Display After Commit
-------------------------------------------------

SELECT * FROM BankAccounts;
GO

-------------------------------------------------
-- Transaction with Exception Handling
-------------------------------------------------

BEGIN TRY

    BEGIN TRANSACTION;

    UPDATE BankAccounts
    SET Balance = Balance - 10000
    WHERE AccountID = 101;

    -- Generate Error
    DECLARE @Result INT;
    SET @Result = 100/0;

    UPDATE BankAccounts
    SET Balance = Balance + 10000
    WHERE AccountID = 103;

    COMMIT TRANSACTION;

END TRY

BEGIN CATCH

    PRINT 'Error Occurred';

    PRINT ERROR_MESSAGE();

    ROLLBACK TRANSACTION;

END CATCH;
GO

-------------------------------------------------
-- Final Records
-------------------------------------------------

SELECT * FROM BankAccounts;
GO