# SOLID Principles

## Overview

SOLID is a set of five object-oriented design principles introduced by Robert C. Martin (Uncle Bob). These principles help developers write clean, maintainable, scalable, and loosely coupled software. By following SOLID principles, applications become easier to understand, test, modify, and extend.

This module demonstrates each SOLID principle with practical C# examples.

---

## Principles Covered

### 1. Single Responsibility Principle (SRP)

A class should have only one reason to change, meaning it should perform only one specific responsibility.

#### Advantages

- Improves readability
- Easier maintenance
- Better code organization
- Simplifies testing

---

### 2. Open-Closed Principle (OCP)

Software entities should be open for extension but closed for modification.

#### Advantages

- Easy to add new features
- Reduces risk of breaking existing code
- Promotes extensibility
- Supports scalable applications

---

### 3. Liskov Substitution Principle (LSP)

Derived classes should be replaceable for their base classes without affecting program correctness.

#### Advantages

- Ensures correct inheritance
- Improves polymorphism
- Prevents unexpected behavior
- Enhances code reliability

---

### 4. Interface Segregation Principle (ISP)

Clients should not be forced to depend on interfaces they do not use.

#### Advantages

- Smaller interfaces
- Reduces unnecessary implementation
- Improves flexibility
- Easier maintenance

---

### 5. Dependency Inversion Principle (DIP)

High-level modules should not depend on low-level modules. Both should depend on abstractions.

#### Advantages

- Loose coupling
- Easier unit testing
- Better maintainability
- Flexible architecture

---

### 6. Dependency Injection (DI)

Dependency Injection is a design technique used to implement the Dependency Inversion Principle by injecting dependencies instead of creating them inside a class.

#### Types of Dependency Injection

- Constructor Injection
- Property Injection
- Method Injection

#### Advantages

- Better testability
- Loose coupling
- Easier maintenance
- Improved scalability

---

## Technologies Used

- C#
- .NET 10
- Visual Studio Code
- .NET CLI

---

## Folder Structure

```
SOLID-Principles
│
├── 01-SRP
├── 02-OCP
├── 03-LSP
├── 04-ISP
├── 05-DIP
├── 06-Dependency-Injection
│
└── README.md
```

---

## Learning Outcomes

After completing this module, I was able to:

- Understand the importance of SOLID principles.
- Design classes with a single responsibility.
- Extend applications without modifying existing code.
- Apply proper inheritance using LSP.
- Create focused and meaningful interfaces.
- Reduce coupling using abstractions.
- Implement Dependency Injection in C# applications.
- Develop scalable and maintainable object-oriented software.

---

## Applications

- Enterprise Applications
- ASP.NET Core Applications
- Web APIs
- Microservices
- Desktop Applications
- Unit Testing
- Large-Scale Software Systems

---

## Benefits of SOLID Principles

- Clean Code
- Loose Coupling
- High Cohesion
- Better Reusability
- Easier Maintenance
- Improved Testability
- Scalability
- Flexibility

---

## Conclusion

SOLID principles form the foundation of modern object-oriented software design. Applying these principles results in robust, reusable, and maintainable applications that are easier to develop, test, and extend over time.