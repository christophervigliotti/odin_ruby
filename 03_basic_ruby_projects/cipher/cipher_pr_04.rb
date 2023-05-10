# see readme.MD for more solutions 
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a  + ('A'..'Z').to_a
    rotate_to_position = (encode_or_decode == 'encode') ? key : -key
    key_array = alphabet_array.rotate(rotate_to_position)
    map_hash = Hash[alphabet_array.zip(key_array)]
    string.each_char{|character| 
        encoded_string += map_hash[character] || character
    }
    encoded_string # return variable
end
p caesar_encode('Et tu, Bluto?',5)
p caesar_encode('Jy yz, Gqzyt?',5,'decode')