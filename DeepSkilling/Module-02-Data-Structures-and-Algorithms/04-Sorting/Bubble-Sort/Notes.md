# Bubble Sort Notes

## What is Bubble Sort?

Bubble Sort repeatedly compares two adjacent elements and swaps them if they are in the wrong order.

The process continues until the array becomes sorted.

---

## Example

Original Array

64 34 25 12 22

Pass 1

34 25 12 22 64

Pass 2

25 12 22 34 64

Pass 3

12 22 25 34 64

Sorted

12 22 25 34 64

---

## Algorithm

1. Compare adjacent elements.
2. Swap if the left element is greater.
3. Repeat until no swaps are needed.

---

## Time Complexity

| Case | Complexity |
|------|------------|
| Best | O(n) |
| Average | O(n²) |
| Worst | O(n²) |

---

## Space Complexity

O(1)

---

## Advantages

- Easy to implement
- No extra memory required
- Stable sorting algorithm

---

## Disadvantages

- Slow for large datasets
- High number of comparisons
- High number of swaps

---

## Applications

- Educational purposes
- Small datasets
- Nearly sorted arrays

---

## Key Takeaways

✔ Bubble Sort compares adjacent elements.

✔ Largest element moves to the end after each pass.

✔ It is an in-place sorting algorithm.

✔ Best Case: O(n)

✔ Worst Case: O(n²)

✔ Not suitable for large datasets.