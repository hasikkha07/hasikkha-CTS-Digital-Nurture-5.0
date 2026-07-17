# Doubly Linked List Notes

## What is a Doubly Linked List?

A Doubly Linked List is a linked list where each node stores:

- Data
- Previous Pointer
- Next Pointer

Example

NULL <- 10 <-> 20 <-> 30 <-> 40 -> NULL

---

## Structure

Each node contains

- Data
- Prev
- Next

---

## Operations

### Insert

Insert a node at the beginning, end, or a specific position.

Time Complexity

- Beginning → O(1)
- End → O(n)

---

### Delete

Delete a node by updating both previous and next pointers.

Time Complexity

O(n)

---

### Search

Find an element in the list.

Time Complexity

O(n)

---

### Traverse

Traverse in both forward and backward directions.

Time Complexity

O(n)

---

## Advantages

- Bidirectional traversal
- Easier insertion and deletion
- Suitable for navigation applications
- Efficient implementation of deques

---

## Disadvantages

- Extra memory for previous pointer
- More complex implementation
- Slightly slower due to pointer management

---

## Applications

- Browser History
- Undo/Redo Operations
- Music Players
- Image Viewers
- Navigation Systems

---

## Time Complexity

| Operation | Complexity |
|-----------|------------|
| Insert Beginning | O(1) |
| Insert End | O(n) |
| Delete | O(n) |
| Search | O(n) |
| Traverse | O(n) |

---

## Key Takeaways

✔ Each node has both previous and next pointers.

✔ Supports forward and backward traversal.

✔ Insertion and deletion are easier than in a singly linked list.

✔ Uses more memory because each node stores two pointers.

✔ Widely used in navigation-based applications.