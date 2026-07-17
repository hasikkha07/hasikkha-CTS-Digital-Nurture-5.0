# 08 - Exception Handling and Transactions Notes

## Transaction

A Transaction is a sequence of SQL statements executed as one logical unit.

### Transaction Commands

- BEGIN TRANSACTION
- COMMIT
- ROLLBACK

---

## COMMIT

Saves all changes permanently.

Example

```sql
COMMIT;
```

---

## ROLLBACK

Cancels all changes made during the transaction.

Example

```sql
ROLLBACK;
```

---

## TRY...CATCH

Used to handle runtime errors.

Syntax

```sql
BEGIN TRY

    -- SQL Statements

END TRY

BEGIN CATCH

    PRINT ERROR_MESSAGE();

END CATCH;
```

---

## ERROR_MESSAGE()

Returns the error message generated inside the CATCH block.

---

## Advantages

- Maintains data consistency
- Prevents partial updates
- Improves reliability
- Simplifies debugging

---

## Applications

- Banking Systems
- Online Payments
- Hospital Billing
- Inventory Management
- Payroll Systems

---

## ACID Properties

### Atomicity

Either all operations succeed or none.

### Consistency

Database remains valid.

### Isolation

Transactions execute independently.

### Durability

Committed data remains permanent.

---

## Key Takeaways

- Learned SQL Transactions.
- Used COMMIT and ROLLBACK.
- Implemented TRY...CATCH.
- Retrieved runtime errors using ERROR_MESSAGE().
- Maintained data integrity.