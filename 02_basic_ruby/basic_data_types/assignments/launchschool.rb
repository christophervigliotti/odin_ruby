# https://launchschool.com/books/ruby/read/basics

require "pry" 
# add breakpoints with binding.pry
# continue with Ctrl + D

puts "LITERALS"
puts 'Hello, world!'          # string literal
puts 375                      # integer literal
puts 3.141528                 # float literal
puts true                     # boolean literal
{ 'a' => 1, 'b' => 2 }        # hash literal
puts [ 1, 2, 3 ]              # array literal
puts :sym                     # symbol literal
puts nil                      # nil literal
puts ""

# binding.pry # Hit Ctrl + D to continue

puts "STRINGS"
# Ex. 1: with double quotes
puts "The man said, 'Hi there!'"
# Ex 2: with single quotes and escaping
puts 'The man said, \'Hi there!\''
a = "ten"
puts "my favorite number is #{a}!"
puts ""

puts "SYMBOLS"
puts :name
puts :a_symbol
puts :"surprisingly, this is also a symbol"
puts ""

puts "NUMBERS"
puts 1,2,3,50,10,43493843984
puts 1.2323,43342.342,23.234
puts ""

puts "NIL"
puts nil
puts x = nil
puts x
puts "Hello world".nil?

if nil
    puts "Hello if nil"
end

if !nil
    puts "Hello if !nil"
end

if 1
    puts "Hello if 1"
end

puts false == nil
puts ""

puts "OPERATIONS"
puts 1 + 1
puts 1 - 1
puts 4 * 4
puts ""

puts "DIVISION (/ symbol) VS MODULO (% symbol)"
puts "16 / 4 = " + (16 / 4).to_s + " ...outputs the result (with no remainder)"
puts "15 / 4 = " + (15 / 4).to_s + " ...outputs the result (with no remainder)"
puts "16 % 4 = " + (16 % 4).to_s + " ...outputs the remainder"
puts "16 % 5 = " + (16 % 5).to_s + " ...outputs the remainder"
puts "16.remainder(5) = " + (16.remainder(5)).to_s + " ...outputs the remainder"
puts "16.divmod(5) = " + (16.divmod(5)).to_s + " ...outputs a/an #{16.divmod(5).class} with the result and the remainder"
puts ""

puts "MULTIPLYING AND DIVIDING FLOATS"
puts 15.0 / 4
puts 9.75 * 4.32
puts ""

puts "EQUALITY COMPARISON"
puts 4 == 4
puts 4 == 5
puts "your" == "your"
puts "your" == "mom"
puts "4" == 4
puts ""

puts "STRING CONCATENATION"
puts "foo" + "foo"
puts "foo" + "bar"
puts "1" + "1"
puts ""

puts "TYPE CONVERSION"
puts "12".to_i.class
puts "1".to_i + "1".to_i
puts "4".to_f
puts "your mom 4".to_f
puts ""

puts "BASIC DATA STRUCTURES"
puts ""

puts "ARRAYS"
an_array = [1,2,3,4,5]
puts an_array
puts an_array[0]
puts ""

puts "HASHES (a dictionary, a key-value pair)"
a_hash = {:dog => "barks"}
another_hash = {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
puts a_hash
puts another_hash[:cat]
puts ""

puts "EXPRESSIONS & RETURN"
puts ""

puts "PUTS VS RETURN"
puts "stuff"
a = puts "stuff"
puts ""

puts "EXERCISES"

puts "1. Add two strings together that, when concatenated, return your first and last name as your full name in one string"
puts "Christopher " + "Vigliotti"
puts ""

puts "2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place"
four_digit_number = 9021
puts four_digit_number
puts four_digit_number / 1000
puts four_digit_number % 1000 / 100
puts four_digit_number % 1000 % 100 / 10
puts four_digit_number % 1000 % 100 % 10
puts ""

puts "3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this. '1974, 2004, 2013' etc"
movies = {
    :new_hope => 1977,
    :empire => 1982,
    :jedi => 1986
}
movies_array = []
movies.each do |key, value|
    puts value
    movies_array.append(value)
end
puts ""

puts "4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3."
movies_array.each do |value|
    puts value
end
puts ""

puts "5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8."
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
puts ""

puts "6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen."
puts 4.30 * 4.30
puts 6.13 * 6.13
puts 124.34 * 124.34
puts ""