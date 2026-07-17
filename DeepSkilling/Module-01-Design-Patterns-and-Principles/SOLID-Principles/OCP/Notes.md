# Open/Closed Principle (OCP)

## Definition

Software entities should be:

- Open for Extension
- Closed for Modification

Instead of changing existing code, extend it by creating new classes.

---

## Example

❌ Bad Design

```
AreaCalculator

if(shape == Circle)
    ...

if(shape == Rectangle)
    ...

if(shape == Triangle)
    ...
```

Every new shape requires modifying the class.

---

✅ Good Design

```
Shape (Abstract)

      ▲
      │
 ┌────┴────┐
 │         │
Circle  Rectangle
```

Each shape implements its own `CalculateArea()` method.

To add a Triangle:

- Create a `Triangle` class.
- No changes to existing classes.

---

## Advantages

- Easy to extend
- Reduces bugs
- Improves maintainability
- Encourages reusable code
- Supports polymorphism

---

## Real-world Example

Payment System

```
Payment

      ▲
      │
 ┌────┴──────────────┐
 │                   │
CreditCard      UPI
```

Adding a new payment method doesn't require modifying existing code.

---

## Key Takeaways

✔ Open for extension.

✔ Closed for modification.

✔ Uses inheritance and polymorphism.

✔ Existing code remains unchanged.

✔ Second principle of SOLID.