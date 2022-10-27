# https://launchschool.com/books/ruby/read/variables

puts "assigning value to variables"
puts "first_name..."
puts first_name = "Joe"

puts "setting a = 4.  a..."
puts a = 4
puts "...setting b = a.  b..."
puts b = a
puts "setting a = 7.  a..."
puts a = 7
puts "b is now..."
puts b
puts ""

# puts "type your name..."
# puts name = gets
# puts "type your name (chomp removes the carriage return...which isn't an issue here but is when using IRB)"
# puts name = gets.chomp
# puts ""

puts "variable scope and method definitions"
name = "Scope McGlobal"
def print_full_name(first_name, last_name)
    name = first_name + " " + last_name
    puts name
end
print_full_name "Wakka", "Wakka!"
puts name
puts ""
puts "variable scope and blocks"
total = 0
[1,2,3].each {|number| total += number}
puts total
total = 0
[1,2,3].each do |number|
    total += number
end
puts total
puts "Inner scope can access variables initialized in an outer scope, but not vice versa."
puts ""

# use curly braces for one-liners 
3.times { |n| a = 3}


a = 5
3.times do |n|
    a = 3
    b = 5
end
puts a
# this breaks because not declared globally 
# puts b
puts "wat"

puts "be aware!"
arr = [1, 2, 3]

# the for...do/end code did not create a new inner scope, since for is part of Ruby language and not a method invocation. When we use each, times and other method invocations, followed by {} or do/end, that's when a new block is created.
for i in arr do
  a = 5 # a is initialized here
end
puts a  # is it accessible here?
puts ""

puts "types of variables"
MY_CONSTANT = 'I am available throughout your app.'
$my_global_variable = 'I am also available throughout your app.'
# will throw an error here, but... @@class_variable = 0
@var = 'I am available throughout the current instance of this class.'
var = 'I must be passed around to cross scope boundaries.'
puts ""

puts "exercises"
puts "1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included."
puts "3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly."
puts "4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once."
puts "Input your first name and press [Enter]." 
name = gets # << I could have also used gets.chomp here
puts "Great, #{name}...now your last name and press [Enter]." 
last_name = gets.chomp
10.times do
    puts "What up, #{name.chomp}, #{last_name}?!"
end
puts ""

puts "2. Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old."
puts "Tell the computer how old you are and then press [Enter]." 
age = gets.to_i
[10,20,30,50000].each do |n|
    puts "in #{n} years you will be #{age+n} years old."
end
puts ""

puts "5. What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?"
puts "(answers in code comments)"
puts "first program..."
x = 0
3.times do
  x += 1 # increments by 1 each time
end
puts x
puts "...second program..."
y = 0
3.times do
  y += 1 # increments y by 1 each time
  x = y # then sets x equal to the current value of y
end
puts x