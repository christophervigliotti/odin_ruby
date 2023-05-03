# https://www.theodinproject.com/lessons/ruby-nested-collections
puts ""
puts "Accessing Elements"
test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]
puts 'You can also use negative indices to return elements from the end of an array, starting at [-1]'
p teacher_mailboxes[0][-1]
p teacher_mailboxes[-1][0]
p teacher_mailboxes[-1][-2]
puts 'If you want a nil value returned when trying to access an index of a nonexistent nested element, you can use the #dig method. This method can also be used when accessing a nonexistent index inside of an existing nested element.'
p teacher_mailboxes.dig(3, 0)
p teacher_mailboxes.dig(0, 4)

puts ""
puts "Creating a new nested array"

mutable = Array.new(3, Array.new(2))
mutable[0][0] = 1000
puts 'mutable...'
p mutable

immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1000
puts 'immutable...'
p immutable

puts ""
puts "Adding and Removing Elements"

test_scores << [100, 99, 98, 97]
p test_scores
test_scores[0].push(100)
p test_scores

test_scores.pop
test_scores[0].pop
p test_scores

test_scores.push('Blarg!')
p test_scores

puts ""
puts "Iterating over a nested array"

teacher_mailboxes.each_with_index do |row, row_index|
    puts "Row:#{row_index} = #{row}"
    row.each_with_index do |teacher, column_index|
        puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
    end
end

puts " if we only need each teacher’s name it would be beneficial to use #flatten before iterating."

teacher_mailboxes.flatten.each do |teacher|
    puts "#{teacher} is amazing!"
end

test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
p test_scores.any? do |scores|
    #p scores
    scores.all? { 
        |score| 
        #p score
        score 
        score > 80 
    }
end

p test_scores.all? do |scores|
    #p scores
    scores.any? { 
        |score| 
        #p score
        score 
        score > 80 
    }
end
puts ""
puts "Nested Hashes"

vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}
p vehicles

puts ""
puts "Accessing Data"

p vehicles[:alice][:year]
p vehicles[:blake][:make]
p vehicles[:caleb][:model]

# p vehicles[:zoe][:year]
p vehicles.dig(:zoe, :year)
p vehicles[:alice][:color]
p vehicles.dig(:alice, :color)

puts ""
puts "Adding and Removing Data"
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
vehicles[:dave][:color] = "red"
p vehicles[:dave]

vehicles.delete(:blake)
p vehicles[:blake]

vehicles[:dave].delete(:color)
p vehicles[:dave][:color]

puts ""
puts "Methods"

p vehicles.select { |name, data| data[:year] >= 2020 }
p vehicles.collect { |name, data| name if data[:year] >= 2020 }
p vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
p vehicles.filter_map { |name, data| name if data[:year] >= 2020 }