# Sorting Algorithm Implementations in Ruby

### Insertion Sort
- Stable
- O(1) extra space
- O(n2) comparisons and swaps
- Adaptive: O(n) time when nearly sorted
- Very low overhead

###### Notes
Algorithm of choice either when:
- the data is nearly sorted => because it is adaptive, or
- the problem size is small => because it has low overhead.

Because it is also stable, it's often used as the recursive base case (when the problem size is small) for higher overhead divide-and-conquer sorting algorithms - such as merge sort or quick sort.
