# Creational Design Patterns

## Overview

Creational Design Patterns focus on object creation mechanisms. These patterns provide flexible ways to create objects while hiding the instantiation logic from the client. They help improve code reusability, scalability, and maintainability.

This module demonstrates the implementation of commonly used Creational Design Patterns using C#.

---

## Patterns Covered

### 1. Singleton Pattern

The Singleton Pattern ensures that only one instance of a class exists throughout the application's lifecycle while providing a global point of access to it.

#### Components

- Singleton Class
- Private Constructor
- Static Instance
- Static Access Method

#### Advantages

- Ensures a single instance
- Global access point
- Saves memory
- Easy resource management

---

### 2. Factory Method Pattern

The Factory Method Pattern defines an interface for creating objects but allows subclasses or factory classes to decide which object to instantiate.

#### Components

- Product Interface
- Concrete Products
- Factory Class
- Client

#### Advantages

- Loose coupling
- Easy to add new products
- Promotes Open-Closed Principle
- Simplifies object creation

---

### 3. Builder Pattern

The Builder Pattern separates the construction of a complex object from its representation, allowing the same construction process to create different representations.

#### Components

- Builder Interface
- Concrete Builder
- Director
- Product

#### Advantages

- Simplifies complex object creation
- Improves readability
- Supports step-by-step construction
- Promotes code reuse

---

## Technologies Used

- C#
- .NET 10
- Visual Studio Code
- .NET CLI

---

## Folder Structure

```
Creational-Patterns
│
├── Singleton
├── Factory-Method
├── Builder
│
└── README.md
```

---

## Learning Outcomes

After completing this module, I was able to:

- Understand object creation mechanisms.
- Implement the Singleton Pattern for single-instance classes.
- Use the Factory Method Pattern for flexible object creation.
- Build complex objects using the Builder Pattern.
- Improve software maintainability through Creational Design Patterns.

---

## Applications

- Database Connections
- Logging Systems
- Configuration Managers
- Object Factories
- Complex Object Creation
- Enterprise Applications

---

## Conclusion

Creational Design Patterns simplify object creation while reducing coupling between classes. These patterns improve flexibility, scalability, and maintainability, making them essential for enterprise application development and modern software design.