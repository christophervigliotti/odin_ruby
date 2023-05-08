# Nested Collections 

https://www.theodinproject.com/lessons/ruby-nested-collections

## Learning Outcomes / Knowledge Check

By the end of this lesson, you should be able to do the following:

* Describe a nested array and hash.
* * Nested Array = An array that contains other arrays is called a nested array, or a multidimensional array.
* * Nested Hash = a hash that contains other hashes

* Explain what data is useful to store in a nested array and hash.
* * similar data, pareht-child relational data

*  Explain how to access data in a nested array and hash.
* * square bracket notation `myvar[0][1]` (You can also use negative indices to return elements from the end of an array, starting at [-1] `myvar[0][-1]`)

*  Explain why the #dig method is useful.
* * If you want a nil value returned when trying to access an index of a nonexistent nested element, you can use the #dig method.

*  Explain how to add data to a nested array and hash.
* * using the push method `test_scores[0].push(100)`
* * using the shovel operator `test_scores << [100, 99, 98, 97]`

*  Explain how to delete data in a nested array and hash.
* * pop.  Remove the last element via `test_scores.pop` or remove every element past position 1 via `test_scores[1].pop`

*  Explain how to create a new nested array that is not mutable.
* * It's a syntax thing...
* * `mutable = Array.new(3, Array.new(2))`
* * vs `immutable = Array.new(3) { Array.new(2) }`

*  Explain how to iterate over a nested array and hash.
* * ...

```
teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
```