puts "anything".reverse

def my_name
    "Christopher Vigliotti" # implicit return
end
puts my_name

puts "method names should start with a lowercase letter, because names that start with capital letters are constants in Ruby"

def greet(name = 'nameless entity')
    return "Hello, " + name + "!" # explicit return
end
puts greet("Jingleheimer")
puts greet

def even_odd(number)
    if number % 2 == 0
        "even!"
    else
        "odd!"
    end
end
puts even_odd(1)
puts even_odd(2)

def muh_name
    return "Jane"
    "John"
end
puts muh_name

def puts_square(number)
    puts number * number
end
puts_square(2)

def returns_square(number)
    number * number
end
square_of_seven = returns_square(7)
puts square_of_seven

# chain methods together
phrase = ["doo","bee","doo","bee","doooooo"]
puts phrase.reverse.join(" ").capitalize

# predicate methods?
puts 5.even?
puts 6.even?
puts 17.odd?
puts 12.between?(10,15)

# bang methods (how rude!)
whisper = "HELLO I AM WHISPERING CAN YOU HEAR ME"
puts whisper.downcase
puts whisper # this puts the caps version...because .downcase does not modified the original string/thing

puts whisper.downcase! # this does modify the original string...because it's a "bang method", as indicated by the !
puts whisper # see??!!