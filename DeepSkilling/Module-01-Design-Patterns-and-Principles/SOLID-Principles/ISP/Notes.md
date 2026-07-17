# Interface Segregation Principle (ISP)

## Definition

A class should not be forced to implement interfaces it does not use.

Instead of one large interface, create multiple smaller interfaces.

---

## Example

### ❌ Bad Design

```
Machine

Print()

Scan()

Fax()
```

A simple printer is forced to implement Scan() and Fax() even though it doesn't support them.

---

### ✅ Good Design

```
IPrint

Print()

IScan

Scan()

IFax

Fax()
```

Classes implement only the interfaces they need.

---

## Advantages

- Smaller interfaces
- Loose coupling
- Better maintainability
- Easier testing
- Improved code reusability

---

## Real-world Example

Printer

Implements only

- Print()

MultiFunction Printer

Implements

- Print()
- Scan()

No unnecessary methods are implemented.

---

## Key Takeaways

✔ Create small, focused interfaces.

✔ Classes implement only what they require.

✔ Avoid large "fat" interfaces.

✔ Improves flexibility and maintainability.

✔ Fourth principle of SOLID.