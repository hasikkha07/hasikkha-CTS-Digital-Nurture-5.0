# Dependency Inversion Principle (DIP)

## Definition

High-level modules should not depend on low-level modules.

Both should depend on abstractions.

Abstractions should not depend on details.

Details should depend on abstractions.

---

## Example

### ❌ Bad Design

```
Notification

↓

EmailService
```

The `Notification` class directly depends on `EmailService`.

If EmailService changes, Notification must also change.

---

### ✅ Good Design

```
          IMessageService
                ▲
       ┌────────┴────────┐
       │                 │
 EmailService      SMSService
       ▲                 ▲
       └────────┬────────┘
                │
          Notification
```

`Notification` depends only on the `IMessageService` interface.

Any new messaging service can be added without modifying `Notification`.

---

## Advantages

- Loose Coupling
- Easy Unit Testing
- High Flexibility
- Better Maintainability
- Easier Extension

---

## Real-world Example

Notification System

Supports multiple message services:

- Email
- SMS
- WhatsApp
- Push Notifications

The Notification class works with any service implementing `IMessageService`.

---

## Key Takeaways

✔ Depend on interfaces, not concrete classes.

✔ High-level modules should not know implementation details.

✔ Supports Dependency Injection.

✔ Makes applications easier to test and maintain.

✔ Fifth and final principle of SOLID.