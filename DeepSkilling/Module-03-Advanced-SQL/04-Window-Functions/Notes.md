# 04 - Window Functions Notes

## Introduction

Window Functions perform calculations across a set of rows related to the current row without collapsing the result set.

---

## ROW_NUMBER()

Assigns a unique sequential number to each row.

Syntax

```sql
ROW_NUMBER() OVER(ORDER BY Salary DESC)
```

---

## RANK()

Assigns ranks with gaps for duplicate values.

Example

90
90
80

Ranks become

1
1
3

---

## DENSE_RANK()

Assigns ranks without gaps.

Example

90
90
80

Ranks become

1
1
2

---

## NTILE()

Divides records into equal groups.

Example

```sql
NTILE(2)
```

creates two groups.

---

## LEAD()

Returns the next row value.

Useful for

- Salary comparison
- Sales comparison
- Trend analysis

---

## LAG()

Returns the previous row value.

Useful for

- Previous salary
- Previous sales
- Historical comparison

---

## PARTITION BY

Creates separate windows for each group.

Example

```sql
PARTITION BY Department
```

Ranks employees department-wise.

---

## Advantages

- Analytical reporting
- Ranking records
- Comparing rows
- Better performance
- Business intelligence

---

## Applications

- Employee Ranking
- Sales Reports
- Banking
- Inventory Analysis
- Student Ranking
- Financial Reports

---

## Key Takeaways

- Learned SQL Window Functions.
- Applied ROW_NUMBER(), RANK(), and DENSE_RANK().
- Compared rows using LEAD() and LAG().
- Used NTILE() for grouping.
- Performed departmental ranking using PARTITION BY.