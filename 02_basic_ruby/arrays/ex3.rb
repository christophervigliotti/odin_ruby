=begin
    Let’s get some practice reading documentation. You’ll 
    feel just like a real programmer! What do you think the 
    methods #clear, #insert, #sample, #shuffle, and #uniq do? 
    Look these methods up in the Array class documentation. Were you close?
=end

# clear empties out the array
print [1,2,3,4,5].clear
puts ""

# insert adds an element to an array
# print [1,2,3,4,5].insert(6)
# actual answer: insert elements the specific index value
print [1,2,3,4,5].insert(1,1000)
puts ""

# sample pulls a random element out of the array 
print [1,2,3,4,5].sample
puts ""

# shuffle reorganizes the elements (randomly)
print [1,2,3,4,5].shuffle
puts ""

# uniq pulls unique values out of an array
print [1,2,2,3,5].uniq
puts ""