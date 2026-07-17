# Merge Sort Notes

## What is Merge Sort?

Merge Sort is a Divide and Conquer algorithm.

It divides the array into smaller parts, sorts them recursively, and merges them back together.

---

## Divide and Conquer

1. Divide the array into two halves.
2. Sort each half recursively.
3. Merge the sorted halves.

---

## Example

Original Array

38 27 43 3 9 82 10

Divide

38 27 43

3 9 82 10

Merge

3 9 10 27 38 43 82

---

## Algorithm

1. Divide the array into two halves.
2. Recursively sort each half.
3. Merge the sorted halves.
4. Repeat until completely sorted.

---

## Time Complexity

| Case | Complexity |
|------|------------|
| Best | O(n log n) |
| Average | O(n log n) |
| Worst | O(n log n) |

---

## Space Complexity

O(n)

---

## Advantages

- Stable sorting algorithm
- Guaranteed O(n log n)
- Efficient for large datasets
- Well suited for linked lists

---

## Disadvantages

- Requires extra memory
- Recursive implementation
- Slower than Quick Sort for small datasets

---

## Applications

- External Sorting
- Linked Lists
- Large Data Processing
- Database Systems

---

## Key Takeaways

✔ Uses Divide and Conquer.

✔ Stable sorting algorithm.

✔ Guaranteed O(n log n) performance.

✔ Requires additional memory.

✔ Preferred for large datasets and linked list sorting.