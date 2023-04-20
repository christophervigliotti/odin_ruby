# https://www.theodinproject.com/lessons/ruby-basic-enumerable-methods

=begin
    Notes
        Learning Outcomes
            By the end of this lesson, you should be able to do the following:
                Explain how the #each and #each_with_index methods work and how they differ.
                Explain how the #map method works.
                Explain how the #select method works.
                Explain how the #reduce method works.
                Describe the differences between using do...end and {...}.
                Explain what a bang method is and why it is or is not considered best practice.


p ".select"
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
brian_has_no_friends = friends.select { |friend| friend != 'Brian' }
p brian_has_no_friends

p ".reject"
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
brian_has_no_friends = friends.reject { |friend| friend == 'Brian' }
p brian_has_no_friends

p ".each"
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }
# method chaining is fun!
friends.reject { |friend| friend == 'Brian' }.each { |friend| puts "Hello, " + friend }

# more readable way to write when you need multiple lines...
my_array = [1, 2]
my_array.each do |num|
    num *= 2
    puts "The new number is #{num}."
end

=end

# each with key and value as defined by separate block variables
my_hash = { "one" => 1, "two" => 2 }
my_hash.each { |key, value| puts "#{key} is #{value}" }

# each with the key and value defined together in one block variable
my_hash.each { |pair| puts "the pair is #{pair}" }  
# my_hash.each { |pair| puts pair.methods.sort }  

# resume at "You may have noticed in the above code examples that #each returns the original array or hash regardless of what happens inside the code block"