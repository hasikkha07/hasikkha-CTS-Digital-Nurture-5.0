# 09 - MERGE, PIVOT and UNPIVOT Notes

## MERGE

MERGE combines INSERT, UPDATE, and DELETE operations into a single statement.

Syntax

```sql
MERGE TargetTable
USING SourceTable
ON Condition
WHEN MATCHED THEN UPDATE
WHEN NOT MATCHED THEN INSERT;
```

### Advantages

- Synchronizes tables
- Reduces code
- Improves performance
- Simplifies maintenance

---

## PIVOT

PIVOT converts row values into columns.

Example

| Employee | Q1 | Q2 |
|----------|----|----|
| Hasikkha |12000|15000|
| Krish |11000|13500|

---

## UNPIVOT

UNPIVOT converts columns back into rows.

Example

| Employee | Quarter | Amount |
|----------|---------|--------|
| Hasikkha |Q1|12000|
| Hasikkha |Q2|15000|

---

## Applications

- Business Intelligence
- Sales Reports
- Financial Reports
- Student Performance Reports
- Inventory Analysis

---

## Advantages

- Better reporting
- Easy data transformation
- Faster synchronization
- Cleaner SQL queries

---

## Key Takeaways

- Learned MERGE statement.
- Synchronized source and target tables.
- Used PIVOT for summary reports.
- Used UNPIVOT to normalize data.
- Improved SQL reporting skills.