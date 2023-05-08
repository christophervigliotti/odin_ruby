# Cipher

via https://www.theodinproject.com/lessons/ruby-caesar-cipher

## Solution (with code comments)

```
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' # capture the encoded string
    alphabet_array = ('a'..'z').to_a # get an array of lowercase letters
    string.split("").each_with_index do | char,each_with_index | # loop through each character of string
        lowercase_char = char.downcase # get lowercase version of letter
        char_is_letter = char.match(/^[[:alpha:]]$/) != nil # is it a letter
        char_is_uppercase = char == char.upcase # is it uppercase
        position = 0 # define the position here (is mutates in the if blocks beow)
        if char_is_letter # if it's a letter determine the position of the encoded character
            if encode_or_decode == 'encode'
                position = (alphabet_array.find_index(lowercase_char)) + key
                position = (position > 26) ? position - 26 : position
            else
                position = (alphabet_array.find_index(lowercase_char)) - key
                position = (position < 0) ? position + 26 : position
            end
            encoded_char = alphabet_array[position] # get the encoded char
            if char_is_uppercase # make it uppercase
                encoded_char = encoded_char.upcase
            end
        else # else it's not a letter, just use the original char
            encoded_char = char 
        end
        encoded_string += encoded_char # add the encoded char to the encoded string
    end
    encoded_string # return variable
end
p caesar_encode('Et tu, Bluto?',5)
p caesar_encode(caesar_encode('Et tu, Bluto?',5),5,'decode')
```

## Assignment Details

From Wikipedia: In cryptography, a Caesar cipher, also known as Caesar’s cipher, the shift cipher, Caesar’s code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

There’s a video about it from Harvard’s CS50 class. https://www.youtube.com/watch?v=36xNpbosfTY

Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

```
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```

### Quick Tips:

* You will need to remember how to convert a string into a number.
* Don’t forget to wrap from z to a.
* Don’t forget to keep the same case.