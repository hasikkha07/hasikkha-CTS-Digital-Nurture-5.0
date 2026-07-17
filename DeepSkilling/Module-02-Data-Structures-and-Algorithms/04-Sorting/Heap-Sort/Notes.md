# Heap Sort Notes

## What is Heap Sort?

Heap Sort is a comparison-based sorting algorithm that uses a Binary Heap.

It builds a Max Heap and repeatedly places the largest element at the end of the array.

---

## Binary Heap

A Binary Heap is a Complete Binary Tree.

### Types

- Max Heap
- Min Heap

In a Max Heap,

Parent ≥ Children

---

## Algorithm

1. Build a Max Heap.
2. Swap the root with the last element.
3. Reduce heap size.
4. Heapify the root.
5. Repeat until sorted.

---

## Example

Original Array

12 11 13 5 6 7

Max Heap

13 11 12 5 6 7

Sorted Array

5 6 7 11 12 13

---

## Time Complexity

| Case | Complexity |
|------|------------|
| Best | O(n log n) |
| Average | O(n log n) |
| Worst | O(n log n) |

---

## Space Complexity

O(1)

---

## Advantages

- Guaranteed O(n log n)
- In-place sorting
- Efficient for large datasets
- No extra array required

---

## Disadvantages

- Not stable
- More complex than Bubble or Insertion Sort
- Poor cache performance compared to Merge Sort

---

## Applications

- Priority Queues
- Scheduling Systems
- Operating Systems
- Large Dataset Sorting

---

## Key Takeaways

✔ Uses a Binary Heap.

✔ Builds a Max Heap before sorting.

✔ Consistent O(n log n) performance.

✔ In-place sorting algorithm.

✔ Not a stable sorting algorithm.