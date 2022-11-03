# https:# launchschool.com/books/ruby/read/flow_control#conditionals
puts "put in a number"
a = gets.chomp.to_i
if a == 3
    puts "it's a three"
elsif a == 4
    puts "it's a FOUR"
else
    puts "it's not three and it's not FOUR.  WTH?!"
end

# one liner
if a == 3 then puts "no srsly..a == 3 and that's good stuff" end

x = a
puts "x is three and I'm pumped about it" if x == 3
puts "x is not 3 and who cares??  not me, i'm just checking out 'unless'" unless x == 3
puts ''

puts 'the equal to operator...is...fun?'
puts 5 == 5
puts 5 == 6
puts 'abc' == 'abc'
puts 'ab' == 'abc'
puts '5' == '5'
puts '5' == 5
puts ''

puts '!=, < and >'
puts 'abc' != 'Abc'
puts 1 > 2
puts 1 < 2
puts ''

puts '<= and >='
puts 1 >= 2
puts 2 >= 1
puts ''

puts 'combining expressions'
puts (4 == 4) && (5 == 5)
puts (4 != 5) && (5 != 6)
puts (4 != 4) && (5 != 6)
puts (4 != 4) || (5 != 6)
puts ''

puts "will it say hello there?"
if true && false || true
    puts "hello there!"
end
puts ""

puts "ternary"
puts true ? "this is true" : "this is not true"
puts false ? "this is true" : "this is not true"
puts ""

hitchhiker = 42
foo = hitchhiker ? 42 : 3.1415    #  Assign result of ?: to a variable
puts(hitchhiker ? 42 : 3.1415)    #  Pass result as argument
# return hitchhiker ? 42: 3.1415    #  Return result

# but dont do this (gross too)
# hitchhiker ? (foo = 42) : (bar = 3.1415) // Setting variables
# hitchhiker ? puts(42) :puts(3.1415)      // Printing
puts ""

puts "case"
a = 5
case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
puts ""

puts "if"
a = 5

if a == 5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
puts ""