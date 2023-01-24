=begin
# https://launchschool.com/books/ruby/read/methods
# read, code-along, do exercises

# method definition and local variable scope
a = 5
def some_method
    a = 3
end
puts a
some_method
puts a
# a will never be set to 3 because the "a" in the method is local to that method
# local scope, yo!

puts "Make sure you don't mix up method invocation with a block and method definition when you're working with local variable scope issues. They may look similar at first, but they are not the same. They have different behaviors when it comes to local variable scope."
num = 0
[1,2,3].each do |num|
    puts num
end
puts num
def print_num(num)
    puts num
end
print_num(4)

def some_method(number)
    number = 7
end
a = 5
some_method(a)
puts a

puts "If you have experience programming in other languages and are wondering if Ruby is a pass-by-value or pass-by-reference language, then you might be disappointed with the answer. In a way, Ruby is both!"

# Example of a method definition that mutates its argument permanently
a = [1, 2, 3]
def mutate(array)
  array.pop
end
p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
# the "pop" method DOES mutate the array object

# Example of a method definition that does not mutate the argument
a = [1, 2, 3]
def no_mutate(array)
  array.last
end
p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"
# the "last" method does not mutate the array object

# return.rb
def add_three(number)
  number + 3
end
returned_value = add_three(4)
puts returned_value

# wat
def add_three_wat(number)
  return number + 3
  number + 4
end
returned_value = add_three_wat(4)
puts returned_value

a = [1, 2, 3]
def mutate(array)
  array.pop
end
p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

=end

def add_three_implicit_return(number)
  number + 3
end
returned_value = add_three_implicit_return(4)
puts returned_value

def add_three(number)
  return number + 3
  number + 4 # this will never be executed, because "return"
end
returned_value = add_three(4)
puts returned_value

puts ''
puts 'chaining methods'
add_three(5).times { puts 'this should print 8 times'}
puts "hi there".length.to_s

puts ''
puts 'method calls as arguments'
def add(a,b)
  a + b
end
def subtract(a,b)
  a - b
end
puts add(20,45)
puts subtract(80,10)
def multiply(num1, num2)
  num1 * num2
end
puts multiply(add(20,45),subtract(80,10))

puts ''
puts 'the call stack'
def first
  puts "first method"
end
def second
  first
  puts "second method"
end
second

puts ''
puts 'exercise 1: Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.'
def greet(name)
  return 'Well howdy there, ' + name + '!'
end
puts greet('Jimmy Dean')

puts ''
puts 'exercise 5'
def scream(words)
  words = words + "!!!!"
  puts words
  return words
end
scream("Yippeee")