# Module 01 - Design Patterns and Principles Notes

## What are Design Patterns?

Design Patterns are reusable solutions to commonly occurring software design problems. They provide proven approaches for creating flexible and maintainable applications.

Design Patterns are not complete code but templates that guide software design.

---

# SOLID Principles

## 1. Single Responsibility Principle (SRP)

A class should have only one responsibility and one reason to change.

Benefits

- Better readability
- Easier maintenance
- Simpler testing

---

## 2. Open-Closed Principle (OCP)

Software entities should be open for extension but closed for modification.

Benefits

- Easy feature addition
- Reduced risk of bugs
- Better scalability

---

## 3. Liskov Substitution Principle (LSP)

Derived classes should be substitutable for their base classes without changing program behavior.

Benefits

- Correct inheritance
- Reliable polymorphism

---

## 4. Interface Segregation Principle (ISP)

Clients should not depend on interfaces they do not use.

Benefits

- Smaller interfaces
- Better flexibility
- Cleaner code

---

## 5. Dependency Inversion Principle (DIP)

High-level modules should depend on abstractions instead of concrete implementations.

Benefits

- Loose coupling
- Easier testing
- Better maintainability

---

## 6. Dependency Injection (DI)

Dependencies are provided externally instead of being created inside a class.

Types

- Constructor Injection
- Property Injection
- Method Injection

---

# Creational Design Patterns

## Singleton Pattern

Ensures only one instance of a class exists.

Uses

- Logger
- Configuration Manager
- Database Connection

---

## Factory Method Pattern

Creates objects without exposing object creation logic.

Uses

- Payment Systems
- Notification Services
- Vehicle Factories

---

## Builder Pattern

Constructs complex objects step by step.

Uses

- Report Generation
- Meal Builder
- Computer Builder

---

# Structural Design Patterns

## Adapter Pattern

Allows incompatible interfaces to work together.

---

## Decorator Pattern

Adds responsibilities to objects dynamically.

---

## Proxy Pattern

Controls access to another object.

Types

- Virtual Proxy
- Protection Proxy
- Remote Proxy

---

# Behavioral Design Patterns

## Command Pattern

Encapsulates requests as objects.

Uses

- Remote Controls
- Menu Commands
- Undo/Redo

---

## Observer Pattern

Defines one-to-many dependency between objects.

Uses

- Notifications
- Stock Market Updates
- Event Handling

---

## Strategy Pattern

Defines interchangeable algorithms.

Uses

- Payment Methods
- Sorting Algorithms
- Route Planning

---

## MVC Pattern

Separates an application into:

- Model
- View
- Controller

Advantages

- Separation of Concerns
- Easier Testing
- Better Maintainability

---

# Key Benefits of Design Patterns

- Code Reusability
- Loose Coupling
- High Cohesion
- Scalability
- Maintainability
- Flexibility
- Easier Debugging
- Better Testing

---

# Key Takeaways

✔ SOLID principles improve software quality.

✔ Design Patterns solve recurring software design problems.

✔ Creational Patterns manage object creation.

✔ Structural Patterns organize classes and objects.

✔ Behavioral Patterns manage communication between objects.

✔ Dependency Injection reduces coupling.

✔ MVC separates application responsibilities.

✔ Following design principles results in scalable and maintainable enterprise applications.