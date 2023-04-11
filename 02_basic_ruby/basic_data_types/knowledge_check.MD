# Knowledge Check

This section contains questions for you to check your understanding of this lesson. If you’re having trouble answering the questions below on your own, review the material above to find the answer.

## Numbers

What are the basic arithmetic operators you can use on numbers?

```
# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)
```

What’s the difference between an integer and a float?

Floats contain a deciman, integers do not

What method would you use to convert a float to an integer?

13.9.to_i

What method would you use to convert an integer to a float?

13.to_f

## Strings

What is a string?

basic, alphanumeric datatype

What are the differences between single and double quotes?

String interpolation and the escape characters both only work inside double quotation marks, not single quotation marks

What is string interpolation?

```
name = "Odin"
puts "Hello, #{name}"
```

How do you concatenate strings?

```
# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"
```

What method would you use to change all the characters in your string to upper case?

upcase

What method would you use to split up strings into arrays?

split

What are escape characters?

```
Escape characters
Escape characters allow you to type in representations of whitespace characters and to include quotation marks inside your string without accidentally ending it. As a reminder, escape characters only work inside double quotation marks.

\\  #=> Need a backslash in your string?
\b  #=> Backspace
\r  #=> Carriage return, for those of you that love typewriters
\n  #=> Newline. You'll likely use this one the most.
\s  #=> Space
\t  #=> Tab
\"  #=> Double quotation mark
\'  #=> Single quotation mark
```

How do you access a specific character or substring?

"hello"[0]

How do you convert other data types into strings?

5.to_s

## Symbols

What is a symbol?

immutable string 

How do you create a symbol?

:my_symbol

What’s the difference between a symbol and a string?

strings are modifyable
strings have a unique object_id

## Booleans

What does true represent?

something that is true

What does false represent?

something that is false

What does nil represent?

nothing! 