# Quiz
https://www.codequizzes.com/ruby/beginner/intro-object-oriented-programming

## Notes
What is a class
    A collection of methods and properties
        or
            A factory that makes objects
What is an object
    an instance of a class
How is a tring object created
    bob = String.new('bob')
create a new Hash object
    Hash.new()
Create a new Array object and add two string objects to it: "fun" and "games".
    my_array = Array.new()
    my_array.push("fun")
    my_array.push("games")
        answer provided was...
            my_array = Array.new()
            my_array.push(String.new("fun"))
            my_array.push(String.new("games"))
What does the following code evaluate to?
    my_string = String.new("special")
    my_string.push("cool")
        an error
What does the following code evaluate to?
    a_string = String.new("ear")
    a_string.class()
        String
Create an instance of the Animal class and assign it to the variable fido.
    class Animal
    end
    fido = Animal.new()
Create an instance of the Dog class and assign it to the variable spot. Then call the speak() method on the spot dog object.
    spot = Animal.new()
    spot.speak()
Define a Penguin class with a looks() method that returns "We are cute!".
    class Penguin               
        def looks
            p 'we are cute'
        end
    end
Define a Calculator class with an add() class method. Demonstrate how the add() method can be called to add two numbers.
    class Calculator
        def add(num1,num2)
            num1 + num2
        end
    end

