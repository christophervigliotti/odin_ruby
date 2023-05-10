# see readme.MD for more solutions 
def caesar_encode(string,key) 
    ALPHABET_ARRAY = ('a'..'z').to_a  + ('A'..'Z').to_a
    rotate_to_position = key
    key_array = ALPHABET_ARRAY.rotate(rotate_to_position)
    string.tr(ALPHABET_ARRAY.join,key_array.join) # love it
end
p caesar_encode('Et tu, Bluto?',5)
p caesar_encode('Jy yz, Gqzyt?',-5)

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