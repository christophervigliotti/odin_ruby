# https://launchschool.com/books/ruby/read/more_stuff#readingstacktraces

def greet(person)
    their_name = (person.is_a? String) ? person : person.to_s
    puts "Hello, " + their_name
  end
  
  greet("John")
  greet(1)
  greet([1,2,3,'toast'])