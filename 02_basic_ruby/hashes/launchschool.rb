puts "https://launchschool.com/books/ruby/read/hashes"

puts "WHAT IS A HASH"
puts old_syntax_hash = {:last_name => 'christoph'}
puts new_hash = {first_name: 'blarb'}
person = {
    name: 'Bloob',
    height: '6ft',
    weight: "160lbs"
}
person[:age] = 62
person.delete(:weight)
puts "#{person[:name]}'s age is #{person[:age]}"
puts old_syntax_hash.merge!(new_hash)
puts ""

puts "ITERATING"
person = {
    name: 'bob',
    height:'6ft',
    weight:'160lbs',
    hair:'not so much',
    age: 'OLD',
    city: 'Brunswick'
}
person.each do |key,value|
    puts "Bob's #{key} is #{value}"
end
puts ""

puts "HASHES AS OPTIONAL PARAMS"
def greeting(name,options = {})
    if options.empty?
        puts "hi my name is #{name}"
    else
        puts "hi my names is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
    end
end
greeting("Bob")
greeting("Bob",person)
greeting("Roberto", age: 62, city: "New Jack City")
puts ""

puts "A NOTE ON HASH KEYS"
a_hash = {"string as key" => "value"}
puts a_hash
a_hash = {["array as key"] => "value"}
puts a_hash
a_hash = {1 => "integer as key"}
puts a_hash
a_hash = {1.90210 => "float as key"}
puts a_hash
a_hash = {{:hash_as_key=>"why"} => "dunno"}
puts a_hash
puts ""

puts "COMMON HASH METHODS"
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
puts "key?"
puts name_and_age.key?("Steve")
puts name_and_age.key?("Leisure Suit Larry")
puts "select"
puts name_and_age.select { |k,v| k == "Bob" } # passes back key-value pair when key is "Bob"
puts name_and_age.select { |k,v| (k == "Bob") || (v == 19) } # passes back key-value pair when either key is "Bob" or value is 19
puts "fetch"
puts name_and_age.fetch("Steve")
# throws an error puts name_and_age.fetch("Ralph")
puts "to_a"
print name_and_age.to_a
puts ""
puts "keys and values"
print name_and_age.keys
puts ""
print name_and_age.values
puts ""
puts ""

puts "A NOTE ON HASH ORDER"
puts "as of Ruby 1.9 hashes maintain the order in which they're stored"

puts "EXERCISE 1"
puts ""

puts "EXERCISE 2"
puts ""

puts "EXERCISE 3"
puts ""

puts "EXERCISE 4"
puts ""

puts "EXERCISE 5"
puts "What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash."
def does_contain(the_hash,search_for)
    TODO: continue here
    puts name_and_age.select { |k,v| (k == "Bob") || (v == 19) } # passes back key-value pair when either key is "Bob" or value is 19
end
puts ""

puts "EXERCISE 6"
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
puts "there is no difference WRONG TRICK QUESTION!"
puts my_hash
puts my_hash2
puts ""

puts "EXERCISE 7"
puts "there is no method 'keys' for the array object"
puts ""