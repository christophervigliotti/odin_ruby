=begin
What is a module? 
    A way to add behaviors to objects / a way to share code across multiple objects

What is its purpose? 
    to share code/behaviors across multiple objects

How do we use them with our classes? 
    we include them
    
Create a module for the class you created in exercise 1 and include it properly...    
=end

module Walk
    puts "pitter patter"
end

class Cat
    include Walk
end

pooperoo = Cat.new
pooperoo.walk() # note the convention here...module and module include use capital "Walk"...method call uses lowercase "walk"