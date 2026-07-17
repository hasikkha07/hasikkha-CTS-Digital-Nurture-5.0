# 02 - Joins and Subqueries Notes

## Joins

A JOIN combines rows from two or more tables based on a related column.

### INNER JOIN

Returns only matching rows from both tables.

### LEFT JOIN

Returns all rows from the left table and matching rows from the right table.

### RIGHT JOIN

Returns all rows from the right table and matching rows from the left table.

### FULL OUTER JOIN

Returns all matching and non-matching rows from both tables.

### CROSS JOIN

Returns the Cartesian Product of two tables.

### SELF JOIN

Joins a table with itself.

---

## Subquery

A query inside another query.

Example:

```sql
SELECT *
FROM Students
WHERE StudentID IN
(
SELECT StudentID
FROM Enrollments
);
```

---

## EXISTS

Checks whether a subquery returns any rows.

---

## Advantages

- Retrieve related data
- Reduce redundant queries
- Improve readability
- Simplify complex conditions

---

## Applications

- Student Management System
- Banking
- Hospital Management
- Inventory System
- E-Commerce

---

## Key Takeaways

- Learned different types of SQL joins.
- Understood nested and aggregate subqueries.
- Used EXISTS for conditional retrieval.
- Practiced retrieving relational data efficiently.