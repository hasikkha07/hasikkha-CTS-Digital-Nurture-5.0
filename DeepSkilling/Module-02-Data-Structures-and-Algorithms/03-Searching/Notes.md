# Searching Algorithms Notes

## What is Searching?

Searching is the process of finding the location of a specific element in a collection of data.

---

# Linear Search

Linear Search checks each element one by one until the target element is found.

Example

Array:

10 20 30 40 50

Search Key:

40

Result:

Found at index 3

---

## Algorithm

1. Start from the first element.
2. Compare each element with the key.
3. Stop when found.
4. Otherwise return "Not Found".

---

## Time Complexity

| Case | Complexity |
|------|------------|
| Best | O(1) |
| Average | O(n) |
| Worst | O(n) |

---

# Binary Search

Binary Search works only on sorted arrays.

It repeatedly divides the search space into two halves.

---

## Algorithm

1. Find the middle element.
2. Compare with the key.
3. Search left or right half.
4. Repeat until found.

---

## Time Complexity

| Case | Complexity |
|------|------------|
| Best | O(1) |
| Average | O(log n) |
| Worst | O(log n) |

---

# Linear Search vs Binary Search

| Feature | Linear | Binary |
|---------|--------|--------|
| Sorted Array Required | No | Yes |
| Best Case | O(1) | O(1) |
| Average Case | O(n) | O(log n) |
| Worst Case | O(n) | O(log n) |

---

## Advantages of Linear Search

- Simple implementation
- Works on unsorted arrays
- No preprocessing required

---

## Advantages of Binary Search

- Very fast
- Efficient for large datasets
- Reduces search space by half each iteration

---

## Applications

- Database searching
- Dictionary lookup
- Contact search
- Product search
- File systems

---

## Key Takeaways

✔ Linear Search works on both sorted and unsorted arrays.

✔ Binary Search requires a sorted array.

✔ Binary Search is much faster for large datasets.

✔ Choosing the correct searching algorithm improves application performance.