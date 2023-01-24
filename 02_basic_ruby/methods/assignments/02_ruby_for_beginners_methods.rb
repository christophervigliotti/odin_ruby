# via https://www.theodinproject.com/lessons/ruby-methods
# assignment 2
# To get a different take, read the part of the Objects section that discusses Methods from Ruby Monsta’s Ruby for Beginners.
# 
# http://ruby-for-beginners.rubymonstas.org/objects/methods.html

=begin
name = 'Vig'
puts name.upcase
name = 'igloo'
puts name.delete('loo').prepend('V').upcase.downcase.upcase
puts 'Vig'.methods.sort
=end

# predicate methods "question mark methods"
puts 5.odd?
puts 5.even?
puts 5.between?(1,10)
name = 'Vig'
puts name.start_with?('V')
puts 0.zero?
puts [1,2,3,4,5].include?(1)
{'one' => 'uno'}.key?('one')

# bang methods "exclamation mark methods"
name = 'Vig'
puts name.upcase!
puts name