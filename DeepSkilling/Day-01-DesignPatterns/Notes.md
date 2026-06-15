Day 01 – Design Patterns and Principles

 Objective

The objective of this module is to understand software design principles and design patterns used in object-oriented programming. These principles help developers create maintainable, reusable, and scalable software applications.


 SOLID Principles

SOLID is a set of five object-oriented design principles that improve software design and maintainability.

## 1. Single Responsibility Principle (SRP)

A class should have only one responsibility and one reason to change.

### Advantages

* Improved readability
* Easier maintenance
* Better testing
* Reduced complexity

### Example

In the hands-on exercise, the Invoice class was responsible only for invoice calculation and the InvoicePrinter class was responsible only for printing functionality.

---

## 2. Open Closed Principle (OCP)

Software entities should be open for extension but closed for modification.

### Advantages

* Easier feature enhancement
* Reduced risk of introducing bugs
* Better maintainability

---

## 3. Liskov Substitution Principle (LSP)

Derived classes should be replaceable with their base classes without affecting program correctness.

### Advantages

* Better inheritance design
* Improved reliability

---

## 4. Interface Segregation Principle (ISP)

Clients should not be forced to depend on interfaces they do not use.

### Advantages

* Smaller interfaces
* Better modularity
* Reduced dependency

---

## 5. Dependency Inversion Principle (DIP)

High-level modules should depend on abstractions rather than concrete implementations.

### Advantages

* Loose coupling
* Easier testing
* Greater flexibility

---

# Design Patterns

Design patterns are reusable solutions to common software design problems.

## Creational Design Patterns

### Singleton Pattern

Ensures that only one instance of a class exists.

### Factory Method Pattern

Creates objects without exposing object creation logic.

### Builder Pattern

Constructs complex objects step by step.

---

## Structural Design Patterns

### Adapter Pattern

Allows incompatible interfaces to work together.

### Decorator Pattern

Adds functionality dynamically to objects.

### Proxy Pattern

Provides a placeholder or representative for another object.

---

## Behavioral Design Patterns

### Observer Pattern

Defines a one-to-many dependency between objects.

### Strategy Pattern

Allows algorithms to be selected at runtime.

### Command Pattern

Encapsulates requests as objects.

---

# Hands-On Activities Performed

## Program 1 – Hello Cognizant

A basic C# console application was created and executed successfully.

### Output

Hello Cognizant!



 Program 2 – Single Responsibility Principle (SRP)

A simple implementation of SRP was created using separate classes for invoice calculation and invoice printing.

 Output

Calculating invoice total...

Printing invoice...



 Learning Outcomes

After completing this module:

* Understood SOLID principles.
* Learned the importance of clean code practices.
* Studied common design patterns.
* Installed and configured .NET SDK.
* Created and executed C# console applications.
* Implemented the Single Responsibility Principle.
* Improved understanding of maintainable software architecture.