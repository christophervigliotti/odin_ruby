# https://launchschool.com/books/ruby/read/arrays
=begin

arr1 = [1,'Bob',4,33,'another string']
puts arr1.to_s # add to_s to have it print on one line
puts arr1.pop.to_s
puts arr1.push("something good").to_s
puts arr1.pop.to_s
puts ""

puts "map and collect do the same thing"
arr2 = [1,2,3,4,4,4,4,4,4]
puts arr2.to_s
arr2.map{|num| print num**2}.to_s
puts ""
arr2.collect {|num| print num**2}.to_s
puts ""
puts arr2.to_s
puts ""
arr2.delete_at(1) # delete at the specified position
puts arr2.to_s
arr2.delete(4) # delete if there is a match
puts arr2.to_s
puts ""

arr3 = [1,1,1,2,2,2,3,3,4,4,5,5,6,7,7,7,8,9]
puts arr3.to_s
puts arr3.uniq.to_s # displays unique values
puts arr3.uniq!.to_s # removes duplicate values
puts arr3.to_s
puts ""

puts "iterating over an array"
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.select { |number| puts number > 4}
puts numbers.to_s
puts ""

# https://launchschool.com/books/ruby/read/arrays#bang_suffix
puts "methods with a !"
def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end
  
a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)
  
puts a

puts "nested arrays"
teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
puts teams[1]

puts "comparing arrays"
a = [1,2,3]
b = [2,3,4]
puts a == b
b.pop # pop removes the last element in an array
puts b.unshift(1) # adds a value to the start of an array
puts a == b

puts "to_s"
a = [1,2,3]
puts "it's as easy as #{a}"

puts "common array methods"
a = [1,2,3,4,5]
puts "include?"
puts a.include?(3)
puts a.include?(6)
puts "flatten"
a = [1,2,[3,4,5],[6,7]]
puts a.flatten
# is flatten destructive?
puts "is flatten destrutive? NO!  #{a[3]}"

puts "each_index"
a = [1,2,3,4,5]
a.each_index { |i| puts "This is index #{i}" }

puts "each_with_index"
a = [1,2,3,4,5]
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }

puts "product"
puts [1, 2, 3].product([4, 5])
# puts ["smelly","stinky","farty"].product([" pants"," face"])

puts "each"
a = [1,2,3]
a.each { |e| puts e }
a.each { |e| puts e + 2 }
puts a.each

puts "map"
puts a.map { |x| x**2 }
a.map { |x| puts x**2 }
puts a.map

puts "exercises"

puts "1"
arr = [1, 3, 5, 7, 9, 11]
number = 3
puts a.include?(number)

puts "2.a"
arr = ["b", "a"]
arr = arr.product(Array(1..3))
puts arr.first.delete(arr.first.last)
print arr

puts "2.b"
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts arr.first.delete(arr.first.last)
print arr

=end

puts "exercise 3"
arr = [["test", "hello", "world"],["example", "mem"]]
puts "answer..."
puts arr.last.first
puts arr[1][0]

puts "exercise 4"
arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5)
# arr.index[5] 
puts arr[5]

puts "ex 5"
string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]
puts a
puts b
puts c 

puts "ex 6"
=begin
  names = ['bob', 'joe', 'susan', 'margaret']
  names['margaret'] = 'jody'
fix this!
=end

names = ['bob', 'joe', 'susan', 'margaret']
print names[names.index 'margaret'] = 'jody'
print names

puts "ex 7"
=begin
Use the each_with_index method to iterate through an array of 
your creation that prints each index and value of the array.
=end
puts "each_with_index"
a = [1,2,3,4,5]
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }


puts "ex 8"
=begin
Write a program that iterates over an array and builds a new array 
that is the result of incrementing each value in the original array by 
a value of 2. You should have two arrays at the end of this program, 
The original array and the new array you've created. Print both arrays 
to the screen using the p method instead of puts.
=end
first = [1,2,3,4,5]
second = []

a.each { |e| 
  second.push(e + 2)
}
print second