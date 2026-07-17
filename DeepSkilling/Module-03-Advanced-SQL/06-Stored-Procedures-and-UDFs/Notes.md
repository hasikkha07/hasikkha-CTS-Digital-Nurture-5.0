# 06 - Stored Procedures and User Defined Functions Notes

## Stored Procedure

A Stored Procedure is a precompiled collection of SQL statements stored in the database.

Syntax

```sql
CREATE PROCEDURE ProcedureName
AS
BEGIN
    SELECT * FROM TableName;
END;
```

### Advantages

- Code Reusability
- Better Performance
- Improved Security
- Easier Maintenance

---

## Stored Procedure with Parameters

Parameters allow dynamic input.

Example

```sql
EXEC GetStudentByDepartment 'CSE';
```

---

## User Defined Function (UDF)

A User Defined Function returns a value or table.

### Types

- Scalar Function
- Table-Valued Function

---

## Scalar Function

Returns a single value.

Example

```sql
SELECT dbo.GetGrade(95);
```

Output

```
A
```

---

## Table-Valued Function

Returns a table.

Example

```sql
SELECT *
FROM dbo.GetCSEStudents();
```

---

## Difference

| Stored Procedure | User Defined Function |
|------------------|----------------------|
| Executes SQL statements | Returns value/table |
| Can modify data | Cannot modify data |
| Called using EXEC | Used inside SELECT |

---

## Applications

- Banking
- Hospital Management
- Student Management
- Inventory Systems
- Payroll Systems

---

## Key Takeaways

- Learned Stored Procedures.
- Created parameterized procedures.
- Created Scalar Functions.
- Created Table-Valued Functions.
- Improved SQL code reusability.