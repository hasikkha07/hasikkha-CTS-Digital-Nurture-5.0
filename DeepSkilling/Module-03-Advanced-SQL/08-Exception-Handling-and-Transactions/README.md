# 08 - Exception Handling and Transactions

## Overview

This exercise demonstrates Exception Handling and Transactions in SQL Server. Transactions ensure data consistency by treating multiple SQL statements as a single unit of work. Exception handling using TRY...CATCH prevents partial updates when errors occur.

---

## Learning Objectives

- Create a transaction
- Commit successful transactions
- Rollback failed transactions
- Handle SQL runtime errors
- Maintain database consistency

---

## Concepts Covered

### Transactions

- BEGIN TRANSACTION
- COMMIT
- ROLLBACK

### Exception Handling

- BEGIN TRY
- BEGIN CATCH
- ERROR_MESSAGE()

---

## Technologies Used

- SQL Server 2022
- SQL Server Management Studio
- Visual Studio Code

---

## Output

The first transaction successfully transfers money between accounts. The second transaction intentionally generates an error, causing the transaction to roll back.

---

## Conclusion

Transactions maintain data integrity, while exception handling prevents inconsistent data during runtime failures.