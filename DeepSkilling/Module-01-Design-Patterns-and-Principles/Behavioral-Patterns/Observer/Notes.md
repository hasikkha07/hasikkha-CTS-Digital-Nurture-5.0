# Observer Pattern Notes

## Definition

The Observer Pattern establishes a one-to-many relationship between objects.

Whenever the Subject changes, all registered Observers are notified automatically.

---

## Structure

```
        Subject
           │
   -----------------
   │       │       │
Observer Observer Observer
```

---

## Components

### Subject

- Maintains a list of observers.
- Sends notifications.

### Observer

- Receives updates.
- Responds to changes.

---

## Workflow

1. Observer subscribes.
2. Subject changes state.
3. Subject notifies all observers.
4. Observers update themselves.

---

## Advantages

- Loose coupling
- Automatic notifications
- Easy to extend
- Supports event-driven programming

---

## Disadvantages

- Can become slow with many observers.
- Notification order is not guaranteed.

---

## Real-world Examples

- YouTube subscriptions
- Instagram followers
- Weather applications
- Stock market updates
- News notifications

---

## Key Takeaways

✔ One Subject can have multiple Observers.

✔ Observers receive automatic updates.

✔ Promotes loose coupling.

✔ Widely used in event-driven systems.

✔ One of the GoF Behavioral Design Patterns.