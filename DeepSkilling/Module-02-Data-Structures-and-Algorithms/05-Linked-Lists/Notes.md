# Linked Lists Notes

## What is a Linked List?

A Linked List is a linear data structure consisting of nodes, where each node stores data and one or more pointers connecting it to other nodes.

Unlike arrays, linked lists do not store elements in contiguous memory locations.

---

# Why Linked Lists?

- Dynamic memory allocation
- Efficient insertion and deletion
- No fixed size
- Better memory utilization

---

# Types of Linked Lists

## 1. Singly Linked List

Each node contains:

- Data
- Next Pointer

Example

10 → 20 → 30 → 40 → NULL

### Characteristics

- One-way traversal
- Simple implementation
- Less memory usage

---

## 2. Circular Singly Linked List

The last node points back to the first node.

Example

```
10 → 20 → 30 → 40
↑               ↓
└───────────────┘
```

### Characteristics

- Continuous traversal
- No NULL pointer
- Suitable for cyclic applications

---

## 3. Doubly Linked List

Each node contains:

- Previous Pointer
- Data
- Next Pointer

Example

NULL ← 10 ⇄ 20 ⇄ 30 ⇄ 40 → NULL

### Characteristics

- Bidirectional traversal
- Easier insertion and deletion
- Extra memory for previous pointer

---

## 4. Circular Doubly Linked List

The first and last nodes are connected in both directions.

Example

```
        ┌────────────────────┐
        ↓                    ↑
10 ⇄ 20 ⇄ 30 ⇄ 40
```

### Characteristics

- Bidirectional traversal
- Circular navigation
- No NULL pointers

---

# Common Operations

### Insert

Add a new node.

Time Complexity

Beginning → O(1)

End → O(n)

---

### Delete

Remove a node.

Time Complexity

O(n)

---

### Search

Find an element.

Time Complexity

O(n)

---

### Traverse

Visit every node.

Time Complexity

O(n)

---

# Comparison of Linked Lists

| Feature | Singly | Circular Singly | Doubly | Circular Doubly |
|---------|--------|-----------------|---------|-----------------|
| Next Pointer | ✅ | ✅ | ✅ | ✅ |
| Previous Pointer | ❌ | ❌ | ✅ | ✅ |
| Circular | ❌ | ✅ | ❌ | ✅ |
| Forward Traversal | ✅ | ✅ | ✅ | ✅ |
| Backward Traversal | ❌ | ❌ | ✅ | ✅ |

---

# Advantages

- Dynamic size
- Efficient insertion and deletion
- Better memory utilization
- No contiguous memory required
- Easy implementation of dynamic data structures

---

# Disadvantages

- Sequential access only
- Extra memory for pointers
- Slower searching than arrays
- Complex pointer manipulation

---

# Applications

- Browser History
- Music Playlist
- Undo/Redo Systems
- Image Viewer
- File Systems
- Round Robin Scheduling
- Memory Management
- Graph Representation
- Hash Tables
- Operating Systems

---

# Time Complexity Summary

| Operation | Complexity |
|-----------|------------|
| Insert Beginning | O(1) |
| Insert End | O(n) |
| Delete | O(n) |
| Search | O(n) |
| Traverse | O(n) |

---

# Key Takeaways

✔ Linked Lists use nodes connected through pointers.

✔ Dynamic memory allocation eliminates fixed-size limitations.

✔ Singly Linked Lists support one-way traversal.

✔ Doubly Linked Lists support two-way traversal.

✔ Circular Linked Lists form a continuous loop.

✔ Linked Lists are ideal when frequent insertions and deletions are required.

✔ Choosing the appropriate linked list depends on the application's requirements.