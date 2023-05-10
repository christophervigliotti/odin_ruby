# Cipher

## Original Solution

https://github.com/christophervigliotti/odin_ruby/blob/main/03_basic_ruby_projects/cipher/cipher.rb 

## Revised Solition 

_After several severeal rounds of feedback..._

```
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a  + ('A'..'Z').to_a
    rotate_to_position = (encode_or_decode == 'encode') ? key : -key
    key_array = alphabet_array.rotate(rotate_to_position)
    map_hash = Hash[alphabet_array.zip(key_array)]
    string.each_char{|character|encoded_string += map_hash[character] || character}
    encoded_string # return variable
end
```

## Feedback

### 5/10/2023 - From RF 

1. strings have some nifty helper methods `.each_char.with_index `
2. have you considered using a hash to map the characters? The map could be generated with code

>Items 1 and 2 above incorporated into https://github.com/christophervigliotti/odin_ruby/blob/main/03_basic_ruby_projects/cipher/cipher_pr_01.rb 

3. another useful helper method on arrays is rotate https://ruby-doc.org/core-2.7.0/Array.html#method-i-rotate 

>Item 3 above incorporated into https://github.com/christophervigliotti/odin_ruby/blob/main/03_basic_ruby_projects/cipher/cipher_pr_02.rb 

4. there is also a method to take an array of two arrays and turn it into a hash.
[[a,b,c],[d,e,f]].... -> {a => d, ...probably a `.transpose.to_h`

> It looks like `.zip` would work (maybe you were referring to that method?)...`Hash[alphabet_array.zip(key_array)]` (great for debugging / dumping the key to see if it looks right
>)  
>```
>key_array = alphabet_array.rotate(rotate_to_position)
>```

5. the hash .invert method https://ruby-doc.org/core-2.7.0/Hash.html#method-i-invert
will probably also be useful

> I'm not sure how to incorporate .invert into my code...specifically what the benefit would be

Convo with reviewer led to two more revisions...

> https://github.com/christophervigliotti/odin_ruby/blob/main/03_basic_ruby_projects/cipher/cipher_pr_03.rb 
> https://github.com/christophervigliotti/odin_ruby/blob/main/03_basic_ruby_projects/cipher/cipher_pr_04.rb 

## Assignment 

Also at https://www.theodinproject.com/lessons/ruby-caesar-cipher

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