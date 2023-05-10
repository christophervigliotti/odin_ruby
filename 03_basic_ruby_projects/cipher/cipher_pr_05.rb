# see readme.MD for more solutions 
def caesar_encode(string,key,encode_or_decode = 'encode') 
    encoded_string = '' 
    alphabet_array = ('a'..'z').to_a  + ('A'..'Z').to_a
    rotate_to_position = (encode_or_decode == 'encode') ? key : -key
    key_array = alphabet_array.rotate(rotate_to_position)
    string.tr(alphabet_array.join,key_array.join) # love it
end
p caesar_encode('Et tu, Bluto?',5)
p caesar_encode('Jy yz, Gqzyt?',5,'decode')

=begin
Notes
    Arrays
        Array.map 
            array.map { |string| string.upcase }
        Array.join 
            [ "a", "b", "c" ].join        
                #=> "abc"
    Basic Datatypes
        String.tr
            "hello".tr('el', 'ip')      
                #=> "hippo"   
=end