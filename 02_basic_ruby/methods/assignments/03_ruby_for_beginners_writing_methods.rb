# http://ruby-for-beginners.rubymonstas.org/writing_methods.html

puts '* variables name things, methods name behavior'
puts is_a?(Object)

def add_two(number)
    number + 2
end
puts add_two(2)
# puts number << will throw an error - because, variable scopes 

puts '* combining methods'
def add_one(number)
    number + 1
end
def add_two(number)
    number = add_one(number)
    add_one(number)
end
puts add_two(2)
def sum(number,other)
    number + other
end
puts sum(3,2)

puts '* printing things'
puts 5.inspect
puts "a string".inspect
puts [1,2,3].inspect
def p(object)
    puts object.inspect
end
puts p('hi there')