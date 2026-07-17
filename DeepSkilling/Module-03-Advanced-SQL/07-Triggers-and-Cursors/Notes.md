# 07 - Triggers and Cursors Notes

## Trigger

A Trigger is a special stored procedure that executes automatically when an INSERT, UPDATE, or DELETE operation occurs.

### Types

- AFTER Trigger
- INSTEAD OF Trigger

---

## AFTER Trigger

Executes after the SQL statement completes successfully.

Example

```sql
CREATE TRIGGER TriggerName
ON TableName
AFTER INSERT
AS
BEGIN
    -- SQL Statements
END;
```

---

## inserted Table

SQL Server automatically creates a temporary table named **inserted** that stores newly inserted rows.

---

## Cursor

A Cursor retrieves records one row at a time.

### Cursor Steps

1. DECLARE
2. OPEN
3. FETCH
4. WHILE Loop
5. CLOSE
6. DEALLOCATE

---

## Advantages

### Trigger

- Automatic execution
- Data auditing
- Security
- Validation

### Cursor

- Row-by-row processing
- Sequential operations
- Complex business logic

---

## Disadvantages

### Trigger

- Difficult to debug
- Performance overhead

### Cursor

- Slower than normal SQL queries
- Uses more resources

---

## Applications

- Banking
- Hospital Management
- Payroll
- Inventory
- Student Management

---

## Key Takeaways

- Learned SQL Triggers.
- Implemented AFTER INSERT Trigger.
- Used inserted table.
- Created Audit Table.
- Implemented SQL Cursor.
- Processed records row-by-row.