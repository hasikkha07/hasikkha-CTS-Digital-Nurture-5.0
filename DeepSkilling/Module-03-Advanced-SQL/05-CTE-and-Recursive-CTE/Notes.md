# 05 - CTE and Recursive CTE Notes

## Introduction

A Common Table Expression (CTE) is a temporary named result set that exists only during the execution of a SQL statement.

Syntax

```sql
WITH CTE_Name AS
(
    SELECT ...
)
SELECT * FROM CTE_Name;
```

---

## Advantages of CTE

- Improves readability
- Reduces code duplication
- Simplifies complex queries
- Makes SQL easier to maintain

---

## Recursive CTE

A Recursive CTE references itself and is mainly used to retrieve hierarchical data.

Structure

- Anchor Member
- Recursive Member
- UNION ALL

---

## Anchor Member

The Anchor Member returns the starting row.

Example

CEO

---

## Recursive Member

The Recursive Member repeatedly retrieves child rows until no more rows exist.

---

## Applications

- Employee Hierarchy
- Organization Chart
- Folder Structure
- Family Tree
- Bill of Materials
- Category Hierarchy

---

## Difference

| CTE | Recursive CTE |
|-----|---------------|
| Executes once | Executes repeatedly |
| Used for simple queries | Used for hierarchical data |
| Does not reference itself | References itself |

---

## Advantages

- Cleaner SQL
- Easier debugging
- Better readability
- Handles recursion efficiently

---

## Key Takeaways

- Learned Common Table Expressions.
- Created temporary result sets.
- Implemented Recursive CTEs.
- Displayed employee hierarchy.
- Counted employees under managers.