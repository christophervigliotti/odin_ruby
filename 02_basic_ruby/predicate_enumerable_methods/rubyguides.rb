# https://www.rubyguides.com/2018/10/any-all-none-one/

words = ["bacon", "orange", "apple"]
puts "p words.all? { |str| str.size == 5 }"
p words.all? { |str| str.size == 5 }
nada = []
puts "p nada.all? { |s| s.size == 1 }"
p nada.all? { |s| s.size == 1 }
puts '^ ^ ^ ^ ^ this returns true since no elements are false...then all (zero) elements must be true.  weird but important to make a note of'
puts "p words.none? { |str| str.size == 5 }"
p words.none? { |str| str.size == 5 }
puts "p words.any? {|str|str == 'bacon'}"
p words.any? {|str|str == 'bacon'}
crap = ["a", 1, {}]
puts "crap.one? { |obj| obj.kind_of?(Hash) }"
p crap.one? { |obj| obj.kind_of?(Hash) }
# new ruby 2.5 feature the grep-like argument
p [:orange, :apple, :coconut].any?(Symbol)
p [1,2,3].all?(1..10)