# Quick Sort Notes

## What is Quick Sort?

Quick Sort is a Divide and Conquer algorithm that selects a pivot element and partitions the array into two parts.

Elements smaller than the pivot are placed on the left, while larger elements are placed on the right.

The same process is repeated recursively until the array is sorted.

---

## Algorithm

1. Choose a pivot element.
2. Partition the array around the pivot.
3. Recursively sort the left partition.
4. Recursively sort the right partition.
5. Combine the results.

---

## Example

Original Array

10 7 8 9 1 5

Pivot = 5

Partition

1 | 5 | 10 7 8 9

Final Sorted Array

1 5 7 8 9 10

---

## Time Complexity

| Case | Complexity |
|------|------------|
| Best | O(n log n) |
| Average | O(n log n) |
| Worst | O(n²) |

Worst case occurs when the smallest or largest element is always chosen as the pivot.

---

## Space Complexity

O(log n)

(Recursive call stack)

---

## Advantages

- Very fast in practice
- In-place sorting
- Efficient for large datasets
- Widely used in real-world applications

---

## Disadvantages

- Worst-case time complexity is O(n²)
- Recursive implementation
- Not a stable sorting algorithm

---

## Applications

- Standard library sorting functions
- Database systems
- Search engines
- Large-scale data processing

---

## Key Takeaways

✔ Uses Divide and Conquer.

✔ Selects a pivot element.

✔ Partitions the array around the pivot.

✔ Average Time Complexity: O(n log n).

✔ Worst Time Complexity: O(n²).

✔ One of the fastest comparison-based sorting algorithms.