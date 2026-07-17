# 07 - Triggers and Cursors

## Overview

This exercise demonstrates SQL Server Triggers and Cursors. Triggers automatically execute when database events occur, while cursors process records one row at a time.

---

## Learning Objectives

- Create AFTER Trigger
- Create Audit Table
- Automatically log inserted records
- Create Cursor
- Process records row-by-row
- Display cursor output

---

## Concepts Covered

### Triggers

- AFTER INSERT Trigger
- inserted Table
- Automatic Logging

### Cursors

- DECLARE CURSOR
- OPEN
- FETCH
- WHILE Loop
- CLOSE
- DEALLOCATE

---

## Technologies Used

- SQL Server 2022
- SQL Server Management Studio
- Visual Studio Code

---

## Output

The trigger records every inserted student into the audit table, and the cursor displays student names one by one.

---

## Conclusion

Triggers automate database actions, while cursors provide row-by-row processing for scenarios where sequential handling is required.