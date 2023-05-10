# see readme.MD for more solutions 
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a  + ('A'..'Z').to_a # adding uppercase letters to the alphabet array
    rotate_to_position = (encode_or_decode == 'encode') ? key : -key
    key_array = alphabet_array.rotate(rotate_to_position)
    string.each_char{|char| # not using index, so this becomes more concise
        char_is_letter = char.match(/^[[:alpha:]]$/) != nil
        position = alphabet_array.find_index(char)
        encoded_char = ''
        if char_is_letter
            encoded_char = key_array[position]            
        else
            encoded_char = char
        end
        encoded_string += encoded_char
    }
    encoded_string # return variable
end
p caesar_encode('Et tu, Bluto?',5)
p caesar_encode('Jy yz, Gqzyt?',5,'decode')