# Liskov Substitution Principle (LSP)

## Overview

The Liskov Substitution Principle states that objects of a derived class should be able to replace objects of their base class without affecting the correctness of the program.

In this example:

- `Bird` is the base class.
- `Sparrow` and `Penguin` inherit from `Bird`.
- Both provide their own implementation of the `Move()` method.

Any derived class can replace the base class object seamlessly.

---

## Topics Covered

- SOLID Principles
- Liskov Substitution Principle
- Inheritance
- Polymorphism
- Method Overriding

---

## Learning Outcomes

After completing this example, I was able to:

- Understand the Liskov Substitution Principle.
- Replace base class objects with derived class objects.
- Apply inheritance correctly.
- Build reliable and maintainable object-oriented programs.

---

## Technologies Used

- C#
- .NET Console Application

---

## Conclusion

The Liskov Substitution Principle ensures that subclasses can be substituted for their parent classes without breaking application behavior, improving code reliability and flexibility.