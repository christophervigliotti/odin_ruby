puts "run 'gem install duplicate' before running this"
require "duplicate"

puts "declaring a variable"
puts ""

puts "age"
age = 18
puts age
age = 18 + 5
puts age
age = age + 4
puts age
age += 4
puts age
age -=2
puts age
puts ""

puts "cash"
cash = 10
puts cash
cash *= 10
puts cash
puts ""

puts "temp"
temp = 40
puts temp
temp /= 10
puts temp
puts ""

puts "how to name variables"
# bad
a = 19
string = "John"
# good
age = 19
name = "John"
can_swim = false
puts ""

puts "variables are references"
puts desired_location = "Barcelona"
johns_location = desired_location
puts johns_location
johns_location.upcase!
puts desired_location
# interesting...so how do I make a "deep copy"
puts ""

puts "more tinkering"
puts ""

puts "making a deep copy (clone) of an object in Ruby"
another_location = duplicate(desired_location).capitalize!
puts "desired_location is " + desired_location + " (object id " + desired_location.object_id.to_s + ")"
puts "another_location is " + another_location + " (object id " + another_location.object_id.to_s + ")"
puts ""