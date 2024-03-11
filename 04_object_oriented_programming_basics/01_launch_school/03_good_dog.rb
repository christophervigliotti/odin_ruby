module Speak
    def speak(sound)
        puts sound
    end
end

class GoodDog
    attr_accessor :name, :height, :weight, :age
    @@number_of_dogs = 0 # class variable
    DOG_YEARS = 7 # constant

    def initialize(n,h,w,a)
        @name = n
        @height = h
        @weight = w
        @@number_of_dogs += 1
        @age = a * DOG_YEARS
    end

    def self.total_number_of_dogs
        @@number_of_dogs
    end

    def change_info(n,h,w)
        @name = n
        @height = h
        @weight = w
    end

    def info
        "#{self.name} is a #{self.weight}-pound plumper standing tall at #{self.height} inches"
    end

    def to_s
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

spanky = GoodDog.new('Spanky','13','9','1')
sparky = GoodDog.new('Sparky','12','10','1')
puts sparky.info
sparky.change_info('Sparkly','90210','5')
puts sparky.info
puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs
puts sparky.to_s