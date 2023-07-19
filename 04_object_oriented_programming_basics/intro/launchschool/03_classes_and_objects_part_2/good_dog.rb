class GoodDog

    #attr_reader: allows us to retrieve instance variables (getters)
    #attr_writer: allows us to set instance variables (setters)
    #attr_accessor: allows get and set
    attr_accessor :name, :height, :weight, :age
    attr_writer :ssn

    # class variables
    @@number_of_dogs = 0

    # constants
    DOG_YEARS = 7

    def initialize(n,h,w,s,a) # constructor, an instance method
        @name = n
        @height = h
        @weight = w
        @ssn = s
        @@number_of_dogs += 1
        self.age = a * DOG_YEARS
    end

    def speak # an instance method
        # this calls the instance variable... "#{@name} says ARF!!"
        # this calls the instance method...
        "#{name} says ARF!!!"
    end

    def ssn
        'xxx-xx-' + @ssn.split("-").last
    end

    # the self. prefix tells Ruby that we're calling a setter method (and not creating a local variable)
    # While this works, the general rule from the Ruby style guide is to "Avoid self where not required."
    def change_info(n,h,w,s)
        self.name = n
        self.height = h
        self.weight = w
        self.ssn = s
    end

    def info
        "#{name} weights #{weight} stones and is #{height} wigwams tall"
    end

    # this is a class method, as indicated by the self. prefix
    def self.what_am_i
        "self.what_am_i says: I'm a GoodDog class"
    end

    def self.total_number_of_dogs
        @@number_of_dogs
    end

    # override to_s for this class
    def to_s
        "this dog's name is #{name} and it's age is #{age} in dog years"
    end

    def what_is_self
        self
    end

    def self.this_is_a_class_method
        self
    end
end

class FortyTwo
    def to_s
        '42'
    end
end
  
sparky = GoodDog.new("Wolf-enstein","1","2","999-99-9999",5) 
=begin
sparky.change_info("Barkley","500","90210","00-00-0000")
puts sparky.info
puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs
puts sparky.age
puts sparky # calls sparky.to_s (because sparky is not a string)
p sparky # calls sparky.inspect
rufus = GoodDog.new("Pug","1","2","999-99-9999",5) 
puts GoodDog.total_number_of_dogs

foo = FortyTwo.new
puts foo
puts "foo is #{foo}"
=end
p sparky.what_is_self