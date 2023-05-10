# see readme.MD for more solutions 
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a 
    key_array = alphabet_array.map.with_index { # 2. have you considered using a hash to map the characters? The map could be generated with code, but a map
        | value, index | 
        if(encode_or_decode == 'encode')
            modifier = (index+key > 25) ? index+key-26 : index+key;
        else # decode
            modifier = (index-key < 0) ? index-key+26 : index-key;
        end
        alphabet_array[modifier]
    }
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