# see readme.MD for more solutions 
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a 
    rotate_to_position = (encode_or_decode == 'encode') ? key : -key
    key_array = alphabet_array.rotate(rotate_to_position) # 3. another useful helper method on arrays is rotate https://ruby-doc.org/core-2.7.0/Array.html#method-i-rotate
    string.each_char.with_index(1){|char, index| 
        lowercase_char = char.downcase 
        char_is_letter = char.match(/^[[:alpha:]]$/) != nil
        char_is_uppercase = char == char.upcase
        position = alphabet_array.find_index(lowercase_char)
        encoded_char = ''
        if char_is_letter
            encoded_char = (char_is_uppercase) ? key_array[position].upcase : key_array[position]            
        else
            encoded_char = char
        end
        encoded_string += encoded_char
    }
    encoded_string # return variable
end
p caesar_encode('Et tu, Bluto?',5)
p caesar_encode('Jy yz, Gqzyt?',5,'decode')