# Behavioral Design Patterns

## Overview

Behavioral Design Patterns define how objects communicate and interact with each other. These patterns improve flexibility, maintainability, and reusability by assigning responsibilities between objects efficiently.

This module demonstrates the implementation of common Behavioral Design Patterns using C#.

---

## Patterns Covered

### 1. Command Pattern

The Command Pattern encapsulates a request as an object, allowing requests to be parameterized, queued, logged, or undone.

#### Components

- Command Interface
- Concrete Command
- Receiver
- Invoker
- Client

#### Advantages

- Loose coupling between sender and receiver
- Easy to add new commands
- Supports undo and redo operations
- Improves extensibility

---

### 2. Observer Pattern

The Observer Pattern establishes a one-to-many relationship between objects so that when one object changes its state, all dependent objects are automatically notified.

#### Components

- Subject
- Observer
- Concrete Subject
- Concrete Observer

#### Advantages

- Loose coupling
- Automatic notification
- Easy to add new observers
- Supports event-driven programming

---

### 3. Strategy Pattern

The Strategy Pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable at runtime.

#### Components

- Strategy Interface
- Concrete Strategies
- Context

#### Advantages

- Eliminates multiple conditional statements
- Easy to introduce new algorithms
- Promotes Open-Closed Principle
- Improves code maintainability

---

### 4. MVC Pattern

Model-View-Controller (MVC) separates an application into three interconnected components to improve maintainability and scalability.

#### Components

- Model
- View
- Controller

#### Advantages

- Separation of concerns
- Easier testing
- Better maintainability
- Code reusability

---

## Technologies Used

- C#
- .NET 10
- Visual Studio Code
- .NET CLI

---

## Folder Structure

```

Behavioral-Patterns

│

├── Command

├── Observer

├── Strategy

├── MVC

│

└── README.md

```

---

## Learning Outcomes

After completing this module, I was able to:

- Understand object interaction patterns.
- Implement the Command Pattern for request encapsulation.
- Use the Observer Pattern for event notification.
- Apply the Strategy Pattern for interchangeable algorithms.
- Understand the MVC architecture.
- Improve software flexibility and maintainability using Behavioral Design Patterns.

---

## Applications

- GUI Applications
- Event Handling Systems
- Notification Services
- Payment Processing
- Logging Systems
- Web Applications
- Enterprise Software

---

## Conclusion

Behavioral Design Patterns focus on communication between objects and help build flexible, maintainable, and loosely coupled software systems. Understanding these patterns is essential for designing scalable enterprise applications.