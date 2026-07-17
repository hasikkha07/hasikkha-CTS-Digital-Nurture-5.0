# Interface Segregation Principle (ISP)

## Overview

The Interface Segregation Principle states that clients should not be forced to depend on interfaces they do not use. Instead of creating one large interface, it is better to create multiple smaller, specific interfaces.

In this example:

- `IPrint` contains only the printing functionality.
- `IScan` contains only the scanning functionality.
- `Printer` implements only `IPrint`.
- `MultiFunctionPrinter` implements both `IPrint` and `IScan`.

---

## Topics Covered

- SOLID Principles
- Interface Segregation Principle
- Interfaces
- Multiple Interface Implementation
- Loose Coupling

---

## Learning Outcomes

After completing this example, I was able to:

- Understand the Interface Segregation Principle.
- Design small and focused interfaces.
- Avoid unnecessary interface implementation.
- Improve flexibility and maintainability.

---

## Technologies Used

- C#
- .NET Console Application

---

## Conclusion

ISP promotes designing smaller, role-specific interfaces, making code easier to understand, maintain, and extend.