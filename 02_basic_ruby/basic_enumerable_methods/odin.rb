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

# each with key and value as defined by separate block variables
my_hash = { "one" => 1, "two" => 2 }
my_hash.each { |key, value| puts "#{key} is #{value}" }

# each with the key and value defined together in one block variable
my_hash.each { |pair| puts "the pair is #{pair}" }  
# my_hash.each { |pair| puts pair.methods.sort }  
# resume at "You may have noticed in the above code examples that #each returns the original array or hash regardless of what happens inside the code block"

# iterates over but dos not alter the elements in an array
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| friend.upcase }
# print friends

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []
friends.each { |friend| shouting_at_friends.push(friend.upcase) }
# print shouting_at_friends

# map
# Map returns a new array with the results
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends_mapped = friends.map { |friend| friend.upcase }
p friends_mapped

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order_mapped = my_order.map { |item| item.gsub('medium', 'extra large') }
p my_order_mapped

salaries = [1200, 1500, 1100, 1800]
salaries_mapped = salaries.map { |salary| salary - 700 }
p salaries_mapped

=end


# select

    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
    invited_list = []
    friends.each do |friend|
    if friend != 'Brian'
        invited_list.push(friend)
    end
    end
    #p invited_list

    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
    invited_list = friends.select { |friend| friend != 'Brian' }
    #p invited_list

    responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
    yesses = responses.select { |person, response| response == 'yes'}
    #p yesses

# reduce

    my_numbers = [5, 6, 7, 8]
    sum = 0
    #p my_numbers.each { |number| sum += number }
    #p sum

    my_numbers = [5, 6, 7, 8]
    sum = my_numbers.reduce { |sum, number| sum + number }
    #p sum

    my_numbers = [5, 6, 7, 8]
    #p my_numbers.reduce(1000) { |sum, number| sum + number }

    votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]
    votes_counted = votes.reduce(Hash.new(0)) do |result, vote|
    result[vote] += 1
    result
    end
    #p votes_counted

hashy = Hash.new('default value')
#p hashy["wat"]

# bang methods (they modify things!)

    friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
    friends.map { |friend| friend.upcase }
    p friends

    friends.map! { |friend| friend.upcase }
    p friends

# return values of enumerables