# a module is a collection of behaviors that is usable
# in other classes via mixins
module Speak
    def speak(sound)
        puts sound
    end
end

class GoodDog
    include Speak # this is how we mix in the Speak module
end

class HumanBeing
    include Speak # this is how we mix in the Speak module
end

puts "---human and dog speak---"
sparky = GoodDog.new
bob = HumanBeing.new
bob.speak('hello')
sparky.speak('arf')

puts "---GoodDog ancestors---"
puts GoodDog.ancestors 
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

