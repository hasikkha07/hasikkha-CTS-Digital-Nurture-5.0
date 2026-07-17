# Single Responsibility Principle (SRP)

## Definition

A class should have only one reason to change.

Each class should perform only one responsibility.

---

## Example

❌ Bad Design

Report

- Store Report
- Print Report
- Save Report
- Export Report

One class has multiple responsibilities.

---

✅ Good Design

Report

- Store Report

ReportPrinter

- Print Report

ReportSaver

- Save Report

Each class has one responsibility.

---

## Advantages

- Easy Maintenance
- Easy Testing
- Better Code Reusability
- Loose Coupling
- High Cohesion

---

## Real-world Example

Employee

Stores employee details.

SalaryCalculator

Calculates salary.

EmployeeRepository

Stores employee information.

Each class has only one responsibility.

---

## Key Takeaways

✔ One class → One responsibility.

✔ Easier debugging.

✔ Easier testing.

✔ Better software design.

✔ First principle of SOLID.