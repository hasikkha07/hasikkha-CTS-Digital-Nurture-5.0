# Insertion Sort Notes

## What is Insertion Sort?

Insertion Sort builds the sorted array one element at a time by inserting each element into its correct position.

---

## Example

Original Array

12 11 13 5 6

Pass 1

11 12 13 5 6

Pass 2

11 12 13 5 6

Pass 3

5 11 12 13 6

Pass 4

5 6 11 12 13

Sorted Array

5 6 11 12 13

---

## Algorithm

1. Assume the first element is sorted.
2. Pick the next element.
3. Compare it with previous elements.
4. Shift larger elements to the right.
5. Insert the element into its correct position.
6. Repeat until the array is sorted.

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
- Stable sorting algorithm
- In-place sorting
- Efficient for small datasets
- Performs well on nearly sorted arrays

---

## Disadvantages

- Inefficient for large datasets
- Requires many shifts in the worst case

---

## Applications

- Small datasets
- Nearly sorted data
- Online sorting
- Educational purposes

---

## Key Takeaways

✔ Builds a sorted array one element at a time.

✔ Inserts elements into their correct position.

✔ Stable and in-place sorting algorithm.

✔ Best Case: O(n)

✔ Worst Case: O(n²)

✔ More efficient than Bubble Sort for nearly sorted arrays.