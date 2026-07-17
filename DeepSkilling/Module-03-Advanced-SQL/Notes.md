# Module 03 – Advanced SQL Notes

## Introduction

Advanced SQL extends the capabilities of basic SQL by providing techniques for writing optimized, reusable, secure, and efficient database queries. It also enables procedural programming within SQL Server.

---

# 1. DDL

Data Definition Language is used to define database structures.

Commands:

- CREATE
- ALTER
- DROP
- TRUNCATE
- RENAME

Example:

```sql
CREATE TABLE Students
(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50)
);
```

---

# 2. DML

Data Manipulation Language is used to manipulate records.

Commands:

- INSERT
- UPDATE
- DELETE
- SELECT

---

# 3. Joins

Used to combine records from multiple tables.

Types

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN
- CROSS JOIN
- SELF JOIN

---

# 4. Subqueries

A query inside another query.

Types

- Single-row
- Multi-row
- Correlated
- Nested

---

# 5. Views

A virtual table created from SELECT queries.

Advantages

- Security
- Simplicity
- Reusability

---

# 6. Indexes

Improve query performance.

Types

- Clustered
- Non-Clustered

---

# 7. Window Functions

Perform calculations across rows.

Functions

- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()
- LEAD()
- LAG()

---

# 8. Common Table Expressions (CTE)

Temporary result sets.

Syntax

```sql
WITH CTE AS
(
SELECT ...
)
SELECT * FROM CTE;
```

---

# 9. Recursive CTE

Used for hierarchical data.

Example

- Employee hierarchy
- Organization chart

---

# 10. Stored Procedures

Reusable SQL programs.

Advantages

- Better Performance
- Security
- Code Reusability

---

# 11. User Defined Functions

Types

- Scalar Function
- Table-Valued Function

---

# 12. Triggers

Automatically execute on events.

Events

- INSERT
- UPDATE
- DELETE

---

# 13. Cursor

Processes rows one at a time.

Steps

- Declare
- Open
- Fetch
- Close
- Deallocate

---

# 14. Transactions

Ensure data consistency.

Commands

- BEGIN TRANSACTION
- COMMIT
- ROLLBACK

---

# 15. Exception Handling

Uses

- TRY
- CATCH

Purpose

- Prevent data corruption
- Handle runtime errors

---

# 16. MERGE

Synchronizes two tables.

Useful for

- Insert
- Update
- Delete

in a single statement.

---

# 17. PIVOT

Converts rows into columns.

Used in reporting and dashboards.

---

# 18. UNPIVOT

Converts columns back into rows.

---

# Advantages of Advanced SQL

- Faster query execution
- Better database performance
- Improved security
- Reduced redundancy
- Code reusability
- Easier maintenance

---

# Applications

- Banking Systems
- E-Commerce
- Hospital Management
- Inventory Systems
- HR Management
- Student Management
- Financial Reporting
- Business Intelligence

---

# Key Takeaways

- Learned advanced querying techniques.
- Implemented joins and subqueries.
- Used views and indexes for optimization.
- Worked with window functions and CTEs.
- Developed stored procedures and functions.
- Implemented triggers and cursors.
- Managed transactions and exception handling.
- Performed advanced SQL operations using MERGE, PIVOT, and UNPIVOT.