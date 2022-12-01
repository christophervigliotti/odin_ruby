# https://www.theodinproject.com/lessons/ruby-arrays

=begin

Learning Outcomes
    By the end of this lesson, you should be able to do the following:
        Describe what an array is, and explain why it’s useful.
        Describe two different ways of creating a new array.
        Explain how to access array elements using different methods.
        Explain three different ways to add data to an array.
        Explain how to remove elements from an array.
=end

# init

arr1 = Array.new
arr2 = Array.new(3)
arr3 = Array.new(3,7)
arr4 = Array.new(3, true)

puts 'arr1...'
puts arr1
puts 'arr2...'
puts arr2
puts 'arr3...'
puts arr3
puts 'arr4...'
puts arr4

arr5 = ['this','is','a','small','array']
# accessing elements

# by position
puts 'arr5...'
puts arr5[0]
puts arr5[1]
puts arr5[2]
puts arr5[3]
puts arr5[4]
puts arr5[-1]
puts arr5[-2]
puts arr5[-3]
puts arr5[-4]

# first and last
puts arr5.first
puts arr5.first(2)
puts arr5.last(2)

puts 'arr6...'
arr6 = [1,2]
arr6.push(3,6) # adds a 6 to position 3
arr6 << 5 # appends an array with a 5
arr6.pop # removes the last array position
puts arr6
puts ''

puts 'unshift, shift and pop'
arr7 = [2,3,4]
puts 'after declare ' + arr7.to_s
arr7.unshift(1) # unshift adds elements to the beginning of an array (returns the array)
puts 'after unshift(1) ' +  arr7.to_s
arr7.shift # shift removes the first element of an array and returns that element (similar to pop)
puts 'after arr7.shift ' + arr7.to_s
puts "" # don't forget to use double quotes for strings, bro 

puts "pop and shift"
arr7 = [1,2,3,4,5,6]
puts "arr7 " + arr7.to_s
puts "arr7.pop(3) " + arr7.pop(3).to_s
puts "arr7.shift(2) " + arr7.shift(2).to_s
puts ""

puts "adding and subtracting arrays"
arr8 = [1,2,3]
arr9 = [3,4,5]
print arr8 + arr9
puts ""
print arr8.concat(arr9)
puts ""
print [1,1,1,2,2,3,4] - [1,4] # find the difference between two arrays
puts ""

=begin
puts "methods"
puts arr9.methods
puts ""
=end

puts "goofing around"
puts [].empty?
puts [[]].empty?
puts [1,2].empty?

puts [1,2,3].length
puts [1,2,3].reverse

puts [1,2,3].include?(3) # true
puts [1,2,3].include?("3") # false
puts [1,2,3].join
puts [1,2,3].join("~")
puts ""

=begin
    Assignment
    https://www.theodinproject.com/lessons/ruby-arrays#assignment
        1. Read Launch School’s chapter on Arrays, following along with the exercises using irb or any other REPL, such as replit.com.
        
        2. Read The Definitive Guide to Ruby Arrays by Jesus Castello.
        
        3. Complete the array exercises from the ruby-exercises repo that you previously cloned.
        
        4. Let’s get some practice reading documentation. You’ll feel just like a real programmer! What do you think the methods #clear, #insert, #sample, #shuffle, and #uniq do? Look these methods up in the Array class documentation. Were you close?              
=end