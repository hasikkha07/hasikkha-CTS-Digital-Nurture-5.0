# DDL and DML Notes

## SQL Server

- Developed by Microsoft
- Relational Database Management System
- Uses T-SQL

---

## DDL (Data Definition Language)

DDL is used to define database objects.

Commands:

- CREATE
- ALTER
- DROP
- TRUNCATE

---

### CREATE

Creates a database or table.

Example:

CREATE TABLE Student(...);

---

### ALTER

Modifies an existing table.

Example:

ALTER TABLE Student ADD Email VARCHAR(100);

---

### DROP

Deletes the table permanently.

Example:

DROP TABLE Student;

---

### TRUNCATE

Deletes all records but keeps the table.

---

## DML (Data Manipulation Language)

Used to manipulate records.

Commands:

- INSERT
- UPDATE
- DELETE

---

### INSERT

Adds new records.

---

### UPDATE

Modifies existing records.

---

### DELETE

Removes selected records.

---

## Difference

DDL

- Structure
- Auto Commit

DML

- Data
- Can Rollback (inside transactions)

---

## Key Takeaways

✔ DDL changes database structure.

✔ DML changes table data.

✔ SQL Server uses T-SQL.
