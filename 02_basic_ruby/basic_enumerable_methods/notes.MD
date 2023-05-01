# Notes

## Enumerable Iterators Cheat Sheet

* `#each` returns the original object it was called on because it's really used for its side effects and not what it returns

* `#each_with_index` passes not just the current item but whatever position in the array it was located in.

* `#select` returns a new object (e.g. array) filled with only those original items where the block you gave it returned true

* `#map` returns a new array filled with whatever gets returned by the block each time it runs.

## Knowledge Check

### What does the #each method do? What does it return?
it loops over each member of an enumerable

### What does the #each_with_index method do?
same as each, but with an index (counter)

### What does the #map method do?
it transforms each element of an array according to whatever block you pass to it

### What does the #select method do?
The #select method (also called #filter) passes every item in an array to a block and returns a new array with only the items for which the condition you set in the block evaluated to true. For example, `friends.select { |friend| friend != 'Brian' }` will return every friend that is not 'Brian'

### What does the #reduce method do?
it reduces an array or hash down to a single object. You should use #reduce when you want to get an output of a single value.

### When should you use do...end around a code block versus {...}?
do-end is usually used for blocks that span through multiple lines while {} is used for single line blocks. Blocks can have arguments which should be defined between two pipe | characters (via https://medium.com/@noordean/understanding-ruby-blocks-3a45d16891f1#:~:text=do%2Dend%20is%20usually%20used,defined%20between%20two%20pipe%20%7C%20characters.)

### Why should you avoid using the bang methods of enumerables?
because we may need access to the original (unaltered) enumerable