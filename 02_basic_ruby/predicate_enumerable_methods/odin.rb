# https://www.theodinproject.com/lessons/ruby-predicate-enumerable-methods

puts ''
puts 'The include? Method'
numbers = [5, 6, 7, 8]
element = 6
result = false
numbers.each do |number|
  if number == element
    result = true
  end
end
result
element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
  end
end
puts result
# or simply...
puts numbers.include?(6)
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
p invited_list.include?('Brian')

puts ''
puts 'The any? Method'
numbers = [21, 42, 303, 499, 550, 811]
result = false
numbers.each do |number|
  if number > 500
    result = true
  end
end
result
numbers = [21, 42, 303, 499, 550, 811]
result = false
numbers.each do |number|
  if number < 20
    result = true
  end
end
p result
# or...
p numbers.any? { |number| number > 500 }
p numbers.any? { |number| number < 20 }

puts ''
puts 'The all? Method'
fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false
fruits.each do |fruit|
  if fruit.length > 3
    matches.push(fruit)
  end
  result = fruits.length == matches.length
end
p result
#=> true
fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false
fruits.each do |fruit|
  if fruit.length > 6
    matches.push(fruit)
  end
  result = fruits.length == matches.length
end
p result
# or...
fruits = ["apple", "banana", "strawberry", "pineapple"]
p fruits.all? { |fruit| fruit.length > 3 }
p fruits.all? { |fruit| fruit.length > 6 }

puts ''
puts 'The none? Method'
fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false
fruits.each do |fruit|
  if fruit.length > 10
    matches.push(fruit)
  end
  result = matches.length == 0
end
p result
#=> true
fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false
fruits.each do |fruit|
  if fruit.length > 6
    matches.push(fruit)
  end
  result = matches.length == 0
end
p result
#=> false
# or...
fruits = ["apple", "banana", "strawberry", "pineapple"]
p fruits.none? { |fruit| fruit.length > 10 }
p fruits.none? { |fruit| fruit.length > 6 }