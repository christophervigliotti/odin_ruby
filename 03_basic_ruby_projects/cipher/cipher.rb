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