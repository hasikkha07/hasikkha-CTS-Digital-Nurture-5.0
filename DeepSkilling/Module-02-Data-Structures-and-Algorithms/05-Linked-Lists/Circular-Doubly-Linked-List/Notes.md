# Circular Doubly Linked List Notes

## What is a Circular Doubly Linked List?

A Circular Doubly Linked List is a linked list where:

- Each node has a Previous pointer.
- Each node has a Next pointer.
- The last node points to the first node.
- The first node points back to the last node.

Example

```
        ┌─────────────────────────────┐
        ↓                             ↑
10 ⇄ 20 ⇄ 30 ⇄ 40
```

---

## Structure

Each node contains:

- Data
- Previous Pointer
- Next Pointer

---

## Operations

### Insert

Insert a node at the beginning or end.

Time Complexity

- Beginning → O(1)
- End → O(1)

---

### Delete

Delete a node by updating both previous and next pointers.

Time Complexity

O(n)

---

### Search

Search for an element.

Time Complexity

O(n)

---

### Traverse

Traverse in forward and backward directions.

Time Complexity

O(n)

---

## Advantages

- Bidirectional traversal
- Circular navigation
- Efficient insertion and deletion
- No NULL pointers
- Suitable for cyclic applications

---

## Disadvantages

- More memory usage
- Complex implementation
- Careful pointer management required

---

## Applications

- Music Players
- Browser Tabs
- Image Galleries
- Round Robin Scheduling
- Undo/Redo Systems
- Operating Systems

---

## Time Complexity

| Operation | Complexity |
|-----------|------------|
| Insert Beginning | O(1) |
| Insert End | O(1) |
| Delete | O(n) |
| Search | O(n) |
| Traverse | O(n) |

---

## Key Takeaways

✔ Supports forward and backward traversal.

✔ Forms a closed circular loop.

✔ No NULL pointers are used.

✔ Efficient insertion at both ends.

✔ Commonly used in navigation and cyclic applications.