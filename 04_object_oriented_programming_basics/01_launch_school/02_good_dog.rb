# a module is a collection of behaviors that is usable
# in other classes via mixins
module Speak
    def speak(sound)
        puts sound
    end
end

class GoodDog
    attr_accessor :name, :height, :weight

    #include Speak # this is how we mix in the Speak module
    def initialize(n,h,w)
        @name = n
        @height = h
        @weight = w
    end

    # shorthand getter and setter
    #   attr_accessor is even more concise 
    #def name
    #    @name
    #end
    #def name=(n)
    #    @name = n
    #end

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
end

class HumanBeing
    include Speak # this is how we mix in the Speak module
end

sparky = GoodDog.new('Sparky','12','10')
puts sparky.info
sparky.change_info('Sparkly','90210','5')
puts sparky.info
#puts sparky.speak
#sparky.name = "Sparkly"
#puts sparky.speak

#puts "---human and dog speak---"
#sparky = GoodDog.new
#bob = HumanBeing.new
#bob.speak('hello')
#sparky.speak('arf')

#puts "---GoodDog ancestors---"
#puts GoodDog.ancestors 
#puts ''
#puts "---HumanBeing ancestors---"
#puts HumanBeing.ancestors

