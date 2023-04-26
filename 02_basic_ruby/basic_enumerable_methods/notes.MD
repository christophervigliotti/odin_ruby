# Notes

## Enumerable Iterators Cheat Sheet

* `#each` returns the original object it was called on because it's really used for its side effects and not what it returns

* `#each_with_index` passes not just the current item but whatever position in the array it was located in.

* `#select` returns a new object (e.g. array) filled with only those original items where the block you gave it returned true

* `#map` returns a new array filled with whatever gets returned by the block each time it runs.

