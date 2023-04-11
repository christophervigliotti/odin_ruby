require 'pry-byebug'

=begin
p "Version 1"
def isogram?(string)
    original_length = string.length
    string_array = string.downcase.split
    p string_array
    unique_length = string_array.uniq.length
    p unique_length
    original_length == unique_length
  end
  
  isogram?("Odin")

  
p "Version 2"
require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")
=end

p "Version 3"

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")