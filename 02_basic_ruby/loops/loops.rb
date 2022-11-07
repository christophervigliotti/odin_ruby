=begin
https://www.theodinproject.com/lessons/ruby-loops
    Learning Outcomes
        By the end of this lesson, you should be able to do the following:
            Explain what a loop is and why it’s useful.
                a loop is a repeating block of code...it's allows you to write code that iterates
                don't hate! iterate!
            Explain what a loop loop is and how to use it.
                a loop with no end in it's definition
                it will only stop with a break condition
            Explain what a while loop is and how to use it.
            Explain what a for loop is and how to use it.
            Explain what a #times loop is and how to use it.
            Explain what an until loop is and how to use it.
            Explain what #upto and #downto loops are and how to use them.
=end

=begin
# loop loop
i = 0
loop do
    i+= 1
    puts "LOOP SAYS: i is #{i}"
    break if i == 10
end

# while loop
# you declare the condition that will break out of the loop up front
i = 0
while i < 10 do
    i+= 1
    puts "WHILE LOOP SAYS: i is #{i}"
end

puts "Will you type 'yes'?"
while gets.chomp != "yes" do
    puts "Will you type 'yes'?"
end

# until loop
# opposite of a while.  while continues as long as condition is true
# until continues as long as condition is false
i = 0
until i >= 10 do
 puts "UNTIL LOOP SAYS: i is #{i}"
 i += 1
end

until gets.chomp == "yes" do
    puts "Will you go to prom with me?"
end
# creepy example, yo

# Ranges
# What if we know exactly how many times we want our loop to run? 
# Ruby lets us use something called a range to define an interval. 
# All we need to do is give Ruby the starting value, the ending value, 
# and whether we want the range to be inclusive or exclusive.


(1..5) # from 1 to 5
(1...5) # from 1 to 4
('a'...'d') # from a to d << cool 

# for loop
# used to iterate through a collection of info such as an array or rangae
for i in 0..5
    puts "#{i} zombies incoming!"
end

# times loop
5.times do
    puts "Hello, world!"
end

5.times do |number|
    puts "Alternative fact number #{number + 1}"
end

# upto and downto loops

5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5

= end

=begin
Assignment
    1. Read the Loops & Iterators chapter of LaunchSchool’s Introduction to Programming With Ruby.
        https://launchschool.com/books/ruby/read/loops_iterators
    2. Try re-writing the above examples using alternative loop methods to achieve the same results.
        NO
Knowledge Check

This section contains questions for you to check your understanding of this lesson. If you’re having trouble answering the questions below on your own, review the material above to find the answer.
    1. What is a loop and why it is useful?
    2. What is a loop loop, and how would you use it?
    3. What is a while loop, and how would you use it?
    4. What is a for loop, and how would you use it?
    5. What is a #times loop, and how would you use it?
    6. What is an until loop, and how would you use it?
    7. What are the #upto and #downto loops, and how would you use them?

    did most of this
=end