# 03 - Views and Indexes Notes

## Views

A View is a virtual table created using a SELECT statement.

Syntax

```sql
CREATE VIEW ViewName AS
SELECT * FROM TableName;
```

### Advantages

- Simplifies complex queries
- Provides data security
- Improves code reusability
- Hides unnecessary columns

---

## Types of Views

- Simple View
- Complex View

---

## Indexes

Indexes improve query performance.

### Types

### Clustered Index

- Sorts data physically.
- Only one clustered index per table.

### Non-Clustered Index

- Creates a separate structure.
- Multiple non-clustered indexes are allowed.

### Composite Index

Index created using multiple columns.

Example

```sql
CREATE INDEX IX_Name
ON Students(StudentName);
```

---

## Advantages of Indexes

- Faster searching
- Faster sorting
- Better query performance
- Optimized data retrieval

---

## Disadvantages

- Extra storage
- Slower INSERT and UPDATE operations

---

## Applications

- Banking
- Student Management
- Inventory Systems
- Hospital Databases
- HR Systems

---

## Key Takeaways

- Learned how to create SQL Views.
- Updated records using Views.
- Created Non-Clustered and Composite Indexes.
- Improved query performance using Indexes.