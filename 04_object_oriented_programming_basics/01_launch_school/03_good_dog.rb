module Speak
    def speak(sound)
        puts sound
    end
end

class GoodDog
    attr_accessor :name, :height, :weight

    def initialize(n,h,w)
        @name = n
        @height = h
        @weight = w
    end

    def change_info(n,h,w)
        @name = n
        @height = h
        @weight = w
    end

    def info
        "#{self.name} is a #{self.weight}-pound plumper standing tall at #{self.height} inches"
    end

    def speak
        "#{@name} says 'arf!'"
    end

    # Why do we need a class method for this? This example is a little contrived, but class methods are where we put functionality that does not pertain to individual objects. Objects contain state, and if we have a method that does not need to deal with states, then we can just use a class method, like our simple example. We'll take a look at a more useful example in the next section.
    def self.what_am_i
        "I'm a GoodDog class"
    end
end

sparky = GoodDog.new('Sparky','12','10')
puts sparky.info
sparky.change_info('Sparkly','90210','5')
puts sparky.info
puts GoodDog.what_am_i