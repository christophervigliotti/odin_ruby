# Knowledge Check

This section contains questions for you to check your understanding of this lesson. If you’re having trouble answering the questions below on your own, review the material above to find the answer.

## What is a loop and why it is useful?

A loop is code that repeats a block of code.  It's useful to help make code concise 

## What is a loop loop, and how would you use it?

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

goes until break

## What is a while loop, and how would you use it?

i = 0
while i < 10 do
 puts "i is #{i}"
 i += 1
end

goes until break...the condition for breaking is stated up front

## What is a for loop, and how would you use it?

for i in 0..5
  puts "#{i} zombies incoming!"
end

These loops are useful if you need to do something a given number of times while also using an iterator.

## What is a #times loop, and how would you use it?

5.times do |number|
  puts "Alternative fact number #{number}"
end

## What is an until loop, and how would you use it?

i = 0
until i >= 10 do
 puts "i is #{i}"
 i += 1
end

until gets.chomp == "yes" do
  puts "Do you like Pizza?"
end

## What are the #upto and #downto loops, and how would you use them?

5.upto(10) {|num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " }   #=> 10 9 8 7 6 5

If you need to step through a series of numbers (or even letters) within a specific range, then these are the loops for you.