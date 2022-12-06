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
puts "Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array."
family = {  
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
  }
print family
immediate_family = family.select do |k, v|
    k == :sisters || k == :brothers
end
arr = immediate_family.values.flatten
p arr

puts "EXERCISE 2"
puts "Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences."
puts a_hash = {blarb: 'blarg'}
puts b_hash = {smaug: 'dragon'}
puts "merge() modification of a_hash is temporary"
puts a_hash.merge(b_hash)
puts "merge!() modification of a_hash is permanen"
puts a_hash.merge!(b_hash)

puts "EXERCISE 3"
puts "Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both."
opposites = {positive: "negative", up: "down", right: "left"}
opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

puts "EXERCISE 4"
puts "Given the following expression, how would you access the name of the person?"
puts "person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}"
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]
puts ""

puts "EXERCISE 5"
puts "What method could you use to find out if a Hash contains a specific value in it?"
puts "Write a program that verifies that the value is within the hash."
def does_contain(the_hash,search_for)
    return the_hash.value?(search_for)
end
blarg = {age: "old"}
puts does_contain(blarg,"old")
# or simply
puts blarg.value?("old")
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