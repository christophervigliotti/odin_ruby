# you can run this file via "ruby hello.rb"
# you can run this file in irb via "irb -r ./hello.rb"

require "pry"

puts 'hello world'

# Stylish Ruby
# via https://launchschool.com/books/ruby/read/preparations#usingacodeeditor

# assigning a variable
forty_two = 42

# defining a method
def this_is_a_method
    # do stuff
end

# constant declaration
FOUR = 'four'
FIVE = 5

# do/end blocks
# When working with do/end blocks, prefer { } when the entire code expression fits on one line.
# Multi-line
[1, 2, 3].each do |i|
    puts 'this is a multi line do/end block'
    puts i
end

# Does the same thing in single line
[1, 2, 3].each { |i| this_is_a_method }

# class naming
class MyFirstClass
end

class MySecondClass
end

# more fun stuff
print "cat".between?("ant", "zebra")

print 'wat'

# execution will pause here
# hit Ctrl + D to continue
binding.pry 

print 'we are done here'