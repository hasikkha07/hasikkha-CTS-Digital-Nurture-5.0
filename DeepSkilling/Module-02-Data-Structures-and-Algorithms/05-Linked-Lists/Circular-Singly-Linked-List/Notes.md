# Circular Singly Linked List Notes

## What is a Circular Singly Linked List?

A Circular Singly Linked List is a linked list where the last node points back to the first node.

Example

10 → 20 → 30 → 40

↑__________________↓

---

## Structure

Each node contains

- Data
- Pointer to Next Node

The last node points to the Head.

---

## Operations

### Insert

Insert a new node at the beginning or end.

Time Complexity

Beginning → O(1)

End → O(n)

---

### Delete

Remove a node from the list.

Time Complexity

O(n)

---

### Search

Find an element.

Time Complexity

O(n)

---

### Traverse

Traversal stops when we reach the Head again.

Time Complexity

O(n)

---

## Advantages

- Continuous traversal
- No NULL pointer
- Efficient for cyclic applications
- Easy implementation of round-robin scheduling

---

## Disadvantages

- More complex traversal
- Infinite loop risk if not handled properly
- Deletion logic is more complicated

---

## Applications

- CPU Scheduling
- Multiplayer Games
- Circular Queues
- Music Playlists
- Traffic Signal Systems

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

✔ Last node points back to the Head.

✔ No NULL at the end.

✔ Traversal continues in a loop.

✔ Useful for cyclic data structures.

✔ Commonly used in operating systems and scheduling algorithms.