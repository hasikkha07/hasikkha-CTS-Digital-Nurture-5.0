# Sorting Algorithms Notes

## What is Sorting?

Sorting is the process of arranging data in a specific order, usually ascending or descending.

Example

Original Array

64 34 25 12 22

Sorted Array

12 22 25 34 64

---

# Why Sorting?

- Faster Searching
- Efficient Data Processing
- Better Organization
- Improves Algorithm Performance

---

# Types of Sorting

## Internal Sorting

Sorting performed entirely in main memory.

Examples

- Bubble Sort
- Insertion Sort
- Heap Sort
- Merge Sort
- Quick Sort

---

## External Sorting

Used when data is too large to fit into memory.

Example

- External Merge Sort

---

# Bubble Sort

Compares adjacent elements and swaps them if they are in the wrong order.

### Characteristics

- Stable
- In-place
- Easy to implement

Time Complexity

Best: O(n)

Average: O(n²)

Worst: O(n²)

---

# Insertion Sort

Builds the sorted array one element at a time by inserting each element into its correct position.

### Characteristics

- Stable
- In-place
- Efficient for small or nearly sorted arrays

Time Complexity

Best: O(n)

Average: O(n²)

Worst: O(n²)

---

# Heap Sort

Uses a Binary Heap (Max Heap) to sort elements.

### Characteristics

- In-place
- Not Stable
- Guaranteed O(n log n)

Time Complexity

Best: O(n log n)

Average: O(n log n)

Worst: O(n log n)

---

# Merge Sort

Uses the Divide and Conquer technique.

The array is recursively divided and merged after sorting.

### Characteristics

- Stable
- Requires extra memory
- Efficient for large datasets

Time Complexity

Best: O(n log n)

Average: O(n log n)

Worst: O(n log n)

---

# Quick Sort

Uses a Pivot element to partition the array.

Elements smaller than the pivot move to the left, while larger elements move to the right.

### Characteristics

- In-place
- Not Stable
- Very fast in practice

Time Complexity

Best: O(n log n)

Average: O(n log n)

Worst: O(n²)

---

# Comparison Table

| Algorithm | Best | Average | Worst | Space | Stable |
|-----------|------|----------|--------|--------|---------|
| Bubble Sort | O(n) | O(n²) | O(n²) | O(1) | Yes |
| Insertion Sort | O(n) | O(n²) | O(n²) | O(1) | Yes |
| Heap Sort | O(n log n) | O(n log n) | O(n log n) | O(1) | No |
| Merge Sort | O(n log n) | O(n log n) | O(n log n) | O(n) | Yes |
| Quick Sort | O(n log n) | O(n log n) | O(n²) | O(log n) | No |

---

# Choosing the Right Sorting Algorithm

Use Bubble Sort

- Small datasets
- Educational purposes

Use Insertion Sort

- Small or nearly sorted data

Use Heap Sort

- Large datasets
- Constant worst-case performance

Use Merge Sort

- Stable sorting
- Linked Lists
- External Sorting

Use Quick Sort

- General-purpose sorting
- Fast average performance

---

# Applications

- Database indexing
- Search algorithms
- File management
- E-commerce product sorting
- Scheduling systems
- Data analytics
- Machine learning preprocessing

---

# Key Takeaways

✔ Sorting arranges data in a specific order.

✔ Bubble Sort and Insertion Sort are simple but inefficient for large datasets.

✔ Heap Sort guarantees O(n log n) performance.

✔ Merge Sort is stable and ideal for large datasets.

✔ Quick Sort is one of the fastest algorithms in practice.

✔ Choosing the right sorting algorithm improves overall application performance.