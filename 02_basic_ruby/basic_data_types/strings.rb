puts 'STRINGS'
puts ''

puts 'concatenation'
puts 'Your ' + 'mom.'
puts 'Your ' << 'mom.'
puts 'Your '.concat('mom').concat('.')
puts ''

puts 'substrings'
puts 'hello'[0] # gets the char in position 0
puts 'hello'[0..3] # gets chars 0 through 3
puts 'hello'[0,3] # gets char 0 through 2 (three positions)
puts 'hello'[-1] # not sure there, maybe gets char one position from the right?
puts ''

puts 'escape characters'
puts '\\'
puts '\b'
puts '\r'
puts '\n'
puts '\s'
puts '\t'
puts "\""
puts "\'"
puts 'hello \n\nworld (single quotes...no bueno)'
puts "hello \n\nworld (double quotes...gouda)"
puts ""

puts "interpolation"
name = 'Christopher Vigliotti'
puts 'hello, #{name} (single quotes...no bueno)'
puts "hello, #{name} (double quotes...gouda)"
puts ""

puts "common string methods"

puts "capitalize"
puts "hello".capitalize

puts "include?"
puts "hello".include?("lo")
puts "hello".include?("z")

puts "upcase and downcase"
puts "hello".upcase
puts "HELLO".downcase

puts "empty?"
puts "hello".empty?
puts "".empty?

puts "length"
puts "hello".length

puts "reverse"
puts "hello".reverse

puts "split"
puts "hello world".split
puts "hello".split("")
puts "      hello, world            ".strip

puts "more"
puts "he77o".sub("7", "l")           #=> "hel7o"
puts "he77o".gsub("7", "l")          #=> "hello"
puts "hello".insert(-1, " dude")     #=> "hello dude"
puts "hello world".delete("l")       #=> "heo word"
puts "!".prepend("hello, ", "world") #=> "hello, world!"
puts ""

puts "converting other objects to strings"
puts 5.to_s
puts nil.to_s
puts :symbol.to_s