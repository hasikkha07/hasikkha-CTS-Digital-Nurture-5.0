# Observer Pattern

## Overview

The Observer Pattern is a Behavioral Design Pattern that defines a one-to-many dependency between objects. When one object (Subject) changes its state, all dependent objects (Observers) are automatically notified.

In this example:

- **YouTubeChannel** acts as the Subject.
- **Subscribers** act as Observers.
- When a new video is uploaded, all subscribers receive a notification.

---

## Topics Covered

- Observer Pattern
- Subject
- Observer Interface
- Subscribe
- Unsubscribe
- Notification Mechanism

---

## Learning Outcomes

After completing this example, I was able to:

- Understand the Observer Pattern.
- Implement publisher-subscriber communication.
- Notify multiple objects automatically.
- Reduce coupling between objects.

---

## Technologies Used

- C#
- .NET Console Application

---

## Conclusion

The Observer Pattern enables automatic communication between related objects while maintaining loose coupling, making systems easier to extend and maintain.