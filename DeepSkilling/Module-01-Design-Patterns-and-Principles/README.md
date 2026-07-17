# Structural Design Patterns

## Overview

Structural Design Patterns focus on how classes and objects are composed to form larger and more flexible structures. These patterns simplify relationships between objects, improve code reusability, and make applications easier to maintain and extend.

This module demonstrates the implementation of commonly used Structural Design Patterns using C#.

---

## Patterns Covered

### 1. Adapter Pattern

The Adapter Pattern allows incompatible interfaces to work together by acting as a bridge between two different classes.

#### Components

- Target Interface
- Adapter
- Adaptee
- Client

#### Advantages

- Enables compatibility between incompatible interfaces
- Promotes code reuse
- Improves flexibility
- Reduces code duplication

---

### 2. Decorator Pattern

The Decorator Pattern allows behavior or responsibilities to be added to objects dynamically without modifying their existing code.

#### Components

- Component
- Concrete Component
- Decorator
- Concrete Decorator

#### Advantages

- Adds functionality dynamically
- Follows the Open-Closed Principle
- Reduces subclassing
- Improves flexibility

---

### 3. Proxy Pattern

The Proxy Pattern provides a placeholder or surrogate object that controls access to another object.

#### Components

- Subject Interface
- Real Subject
- Proxy
- Client

#### Advantages

- Controls object access
- Improves security
- Supports lazy loading
- Enhances performance

---

## Technologies Used

- C#
- .NET 10
- Visual Studio Code
- .NET CLI

---

## Folder Structure

```
Structural-Patterns
│
├── Adapter
├── Decorator
├── Proxy
│
└── README.md
```

---

## Learning Outcomes

After completing this module, I was able to:

- Understand object composition using Structural Design Patterns.
- Implement the Adapter Pattern to integrate incompatible interfaces.
- Use the Decorator Pattern to extend object functionality dynamically.
- Apply the Proxy Pattern to control object access.
- Improve software flexibility and maintainability using Structural Design Patterns.

---

## Applications

- Legacy System Integration
- GUI Frameworks
- File Compression
- Authentication Systems
- Remote Object Access
- Caching
- Logging
- Enterprise Applications

---

## Benefits of Structural Patterns

- Improves code reusability
- Reduces coupling
- Enhances flexibility
- Simplifies object relationships
- Promotes maintainable architecture
- Supports scalable application design

---

## Conclusion

Structural Design Patterns help organize classes and objects into flexible structures while reducing complexity. These patterns make software systems more maintainable, reusable, and scalable by improving object composition and communication.