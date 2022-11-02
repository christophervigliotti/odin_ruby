room_tidy = false
if room_tidy == true
    puts "you are unpaused"
else
    puts "you are paused"
end

=begin
Learning Outcomes
    By the end of this lesson, you should be able to do the following:
        Describe and list falsy values.
        Explain how to use if, elsif, and else.
        Explain the difference between if and unless.
        Describe what ||, &&, and ! do.
        Explain what short circuit evaluation is.
        Describe what the ternary operator is and how to use it.
        Explain what a case statement is and how it works.
=end

puts "Hot diggity damn, 1 is less than 2" if 1 < 2 

attack_by_land = true
attack_by_sea = true

if attack_by_land == true && attack_by_sea == true
    puts "release the shark-goat"
elsif attack_by_land == true
    puts "release the goat"
elsif attack_by_sea == true
    puts "release the shark"
else
    puts "release the kraken"
end

puts 'various'
puts 5 == 5
puts 5 == 6
puts 5 != 5
puts 5 != 6
puts 5 > 6
puts 5 < 6
puts 5 > 5
puts 5 >= 5
puts ''

puts 'eql'
puts 5.eql?(5.0)
puts 5.eql?(5)
a = 5
b = 5
puts a.equal?(b)
a = 'hello'
b = 'hello'
puts a.equal?(b) # returns false?  why?  because they are two distinct objects
puts ""

puts 'spaceship'
puts 5 <=> 10
puts 10 <=> 10
puts 10 <=> 5
puts ""

puts "case"
grade = "C"
did_i_pass = case grade
    when "A" then puts "yes"
    when "B" then puts "yes"
    when "C" then puts "yes"
    when "D" then puts "yes"
    else "yikes"
end
puts ""

puts "unless"
age = 19
unless age < 18
    puts "get a job"
end
# shorter version...
puts "get a job" unless age < 18
puts

puts "elvis operator"
response = age < 18 ? "kid" : "adult"
puts response