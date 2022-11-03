# https://launchschool.com/books/ruby/read/flow_control#exercises

puts "1"
puts (32 * 4) >= 129
puts false != !true
puts true == 4
puts false == (847 == '874')
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

puts "2"
def caps(string)
    if string.length > 10
      string.upcase
    else
      string
    end
  end
puts caps("Joe Smith")
puts caps("Joe Robertson")
puts ""

# exercise 4
# Snippet 1
puts "my guess is 'false'..."
'4' == 4 ? puts("TRUE") : puts("FALSE")

# Snippet 2
puts "my guess is 'true'..."
x = 2
# if three equals three
if ((x * 3) / 2) == (4 + 4 - x - 3)
    puts "it is equal"
else
    puts "it's not equal"
end

# Snippet 3
puts "my guess is 'Alright now!'..."
y = 9
x = 10
if (x + 1) <= (y) # if 11 + 1 is LT or EQ to 10
  puts "Alright."
elsif (x + 1) >= (y) # else if 11 is GT or EQ 10
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
puts ""

# exercise 5, fix the error
def equal_to_four(x)
    if x == 4
      puts "yup"
    else
      puts "nope"
    end
end # fixed by adding a second 'end' (one needed for if block, one needed for function (def) block)
  
  equal_to_four(5)

# ex 6
# puts (32 * 4) >= "129" # 128 >= 129, false (actually it's an error!)
puts 847 == '874' # false (one is a string)
puts '847' < '846' # not sure!
puts '847' > '846' # not sure
puts '847' > '8478' # not sure
puts '847' < '8478' # not sure
