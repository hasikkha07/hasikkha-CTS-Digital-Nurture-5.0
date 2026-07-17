# Module 02 - Data Structures and Algorithms Notes

## Introduction

Data Structures and Algorithms (DSA) are fundamental concepts in computer science that help organize, store, and process data efficiently.

A Data Structure defines how data is stored, while an Algorithm defines the steps used to solve a problem.

Together, they help improve application performance and optimize resource utilization.

---

# Module Contents

## 1. Analysis of Algorithms

Topics Covered

- Introduction to Algorithms
- Types of Data Structures
- Time Complexity
- Space Complexity
- Asymptotic Notations
- Best, Average and Worst Case Analysis
- Iterative Algorithms
- Recursive Algorithms

Key Concepts

- Big O (Worst Case)
- Big Ω (Best Case)
- Big Θ (Average Case)

---

## 2. Arrays

An Array stores elements of the same data type in contiguous memory locations.

Operations

- Traversal
- Searching
- Insertion
- Deletion

Advantages

- Fast Random Access
- Simple Implementation

Disadvantages

- Fixed Size
- Costly Insert/Delete

---

## 3. Searching Algorithms

### Linear Search

- Works on sorted and unsorted arrays
- Sequential search

Time Complexity

Best → O(1)

Worst → O(n)

---

### Binary Search

- Works only on sorted arrays
- Divide and Conquer

Time Complexity

Best → O(1)

Worst → O(log n)

---

## 4. Sorting Algorithms

### Bubble Sort

- Adjacent swapping
- Stable
- In-place

Worst Case

O(n²)

---

### Insertion Sort

- Inserts elements into sorted position
- Stable
- Efficient for nearly sorted data

Worst Case

O(n²)

---

### Heap Sort

- Uses Binary Heap
- Guaranteed O(n log n)

---

### Merge Sort

- Divide and Conquer
- Stable
- Requires extra memory

Time Complexity

O(n log n)

---

### Quick Sort

- Pivot-based sorting
- Divide and Conquer
- Very fast in practice

Average Complexity

O(n log n)

Worst Complexity

O(n²)

---

## 5. Linked Lists

### Singly Linked List

One-way traversal

---

### Circular Singly Linked List

Last node connects back to Head.

---

### Doubly Linked List

Supports forward and backward traversal.

---

### Circular Doubly Linked List

Circular navigation in both directions.

---

# Time Complexity Summary

## Searching

| Algorithm | Complexity |
|-----------|------------|
| Linear Search | O(n) |
| Binary Search | O(log n) |

---

## Sorting

| Algorithm | Best | Average | Worst |
|-----------|------|----------|--------|
| Bubble Sort | O(n) | O(n²) | O(n²) |
| Insertion Sort | O(n) | O(n²) | O(n²) |
| Heap Sort | O(n log n) | O(n log n) | O(n log n) |
| Merge Sort | O(n log n) | O(n log n) | O(n log n) |
| Quick Sort | O(n log n) | O(n log n) | O(n²) |

---

## Linked Lists

| Operation | Complexity |
|-----------|------------|
| Insert | O(1) / O(n) |
| Delete | O(n) |
| Search | O(n) |
| Traverse | O(n) |

---

# Real-World Applications

- Search Engines
- Database Management Systems
- Compiler Design
- Operating Systems
- Memory Management
- Browser History
- Music Playlists
- GPS Navigation
- Social Networks
- Artificial Intelligence
- Machine Learning

---

# Interview Tips

- Understand time and space complexity.
- Practice array and linked list operations.
- Know the difference between Linear and Binary Search.
- Compare sorting algorithms based on complexity.
- Learn when to use each data structure.
- Focus on solving DSA problems efficiently.

---

# Key Takeaways

✔ Data Structures organize data efficiently.

✔ Algorithms solve computational problems effectively.

✔ Arrays provide fast random access.

✔ Linked Lists support dynamic memory allocation.

✔ Binary Search is faster than Linear Search for sorted data.

✔ Merge Sort and Heap Sort guarantee O(n log n) performance.

✔ Quick Sort is one of the fastest sorting algorithms in practice.

✔ Strong DSA knowledge is essential for technical interviews and scalable software development.