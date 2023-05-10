#4. there is also a method to take an array of two arrays and turn it into a hash.
#[[a,b,c],[d,e,f]].... -> {a => d, ...probably a `.transpose.to_h`

#5. the hash .invert method https://ruby-doc.org/core-2.7.0/Hash.html#method-i-invert
#will probably also be useful 

def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a 
    rotate_to_position = (encode_or_decode == 'encode') ? key : -key
    key_array = alphabet_array.rotate(rotate_to_position)
    puts Hash[alphabet_array.zip(key_array)] # 4. there is also a method to take an array of two arrays and turn it into a hash.
    string.each_char.with_index(1){|char, index| # 1. strings have some nifty helper methods `.each_char.with_index `
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