# https://www.rubyguides.com/2015/05/ruby-arrays/

=begin
puts "initialize empty array"
print users = []
puts ""

puts "initialize an array with data"
print numbers = [42,90210,301]
puts ""

puts "%w is cool"
puts beatles = %w(john paul george ringo)
puts ""

puts beatles.first
puts beatles.last
print beatles.push "george (martin)"
puts ""
puts beatles[2]
puts ""

puts "add stuff to an array"
# puts "these do the same thing"
print beatles.push "blech"
puts ""
print beatles << "another blech"
puts ""
puts "delete stuff from an array"
print beatles = %w(john paul george ringo)
puts ""
print beatles.pop 
puts ""
print beatles.delete_at(0)
puts ""
print beatles.unshift "brian wilson"
puts ""
print beatles.shift
puts ""

numbers = [1,2,3]
puts numbers.include?(2)
puts numbers.include?(10)
puts numbers.size
puts numbers.join
puts numbers.join(" ~ ")
print "a b c".split
puts ""

=end

puts "multi-dimensional"
users = [
    [1,'Peter'],
    [2,'Paul'],
    [3,'Mary']
]
puts users[0][1]
print users.flatten
puts ""

puts "iterate"
users.each{|item| 
    print item
    puts ""
}

puts "each_with_index"
users.each_with_index{|item,idx| 
    print "#{item} #{idx}"
    puts ""
}

users = ['Tito','Totoro']
users = users.map { |user| user.capitalize }
users = users.map(&:capitalize)
print users
puts ""

numbers = [3,7,12,2,49]
print numbers.select {|n|n > 10}
puts ""

puts "sorting, negative indexing"
numbers = numbers.sort
print numbers
puts ""
puts numbers[-2]
puts ""

puts "uniq"
numbers = [1,2,2,3,3,3,4,4,5,5,5,6,6,8,7,99]
print numbers = numbers.uniq
puts ""

puts "random with .sample"
puts numbers.sample
puts numbers.sample
puts numbers.sample
puts ""

puts ".take"
numbers = [1,2,3,4,5,nil]
print numbers.take(3)
puts ""

puts "get all elements other than the first one"
print numbers[1..-1]
puts ""

puts "more fun"
puts numbers.size
puts numbers.empty?
print numbers << nil
puts ""
print numbers.compact
puts ""
users = ['Tito']
more_users = ['Totoro']
print users.concat(more_users)
puts ""
users = users - more_users
print users
puts ""
print users & more_users
puts ""