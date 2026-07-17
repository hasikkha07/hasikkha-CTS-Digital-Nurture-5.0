# Liskov Substitution Principle (LSP)

## Definition

Objects of a superclass should be replaceable with objects of its subclasses without changing the correctness of the program.

A derived class should honor the behavior expected from the base class.

---

## Example

### ❌ Bad Design

```
Bird

 ├── Sparrow
 └── Ostrich

Bird.Fly()

Ostrich cannot fly.
```

The subclass violates the expected behavior.

---

### ✅ Good Design

```
Bird

 ├── Sparrow → Fly
 └── Penguin → Swim
```

Both birds implement their own movement while satisfying the base class contract.

---

## Advantages

- Improves code reliability
- Supports polymorphism
- Prevents unexpected behavior
- Encourages proper inheritance
- Easier maintenance

---

## Real-world Example

Payment

```
Payment

      ▲
      │
 ┌────┴──────────┐
 │               │
CreditCard     UPI
```

Both payment methods can replace the base `Payment` class without affecting the application.

---

## Key Takeaways

✔ Derived classes should not break parent class behavior.

✔ Subclasses must be substitutable for their base classes.

✔ Promotes proper inheritance.

✔ Improves maintainability and flexibility.

✔ Third principle of SOLID.