# Dependency Inversion Principle (DIP)

## Overview

The Dependency Inversion Principle states that high-level modules should not depend on low-level modules. Instead, both should depend on abstractions such as interfaces or abstract classes.

In this example:

- `IMessageService` is an abstraction.
- `EmailService` and `SMSService` implement the interface.
- `Notification` depends on the interface rather than concrete implementations.

This makes the application flexible and easy to extend.

---

## Topics Covered

- SOLID Principles
- Dependency Inversion Principle
- Interfaces
- Dependency Injection
- Loose Coupling

---

## Learning Outcomes

After completing this example, I was able to:

- Understand the Dependency Inversion Principle.
- Reduce coupling between classes.
- Use interfaces to create flexible applications.
- Implement dependency injection using constructors.

---

## Technologies Used

- C#
- .NET Console Application

---

## Conclusion

The Dependency Inversion Principle promotes loose coupling by making classes depend on abstractions instead of concrete implementations, resulting in more maintainable and extensible software.