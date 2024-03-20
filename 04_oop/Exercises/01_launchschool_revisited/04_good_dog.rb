class Animal
    attr_accessor :name
  
    def initialize(name)
      @name = name
    end

    def speak
        "Hello"
    end
  end
  
  class GoodDog < Animal
    def initialize(color)
      super
      @color = color
    end
    def speak
        super + " from GoodDog class"
    end
  end
  
  class Cat < Animal
  end

  class Bear < Animal
    def initialize(color)
      super()
      @color = color
    end
  end

  class BadDog < Animal
    def initialize(age, name)
      super(name)
      @age = age
    end
  end

# bear = Bear.new("black") 

sparky = GoodDog.new('brown')
puts sparky.speak           # => Hello!
paws = Cat.new('orange')
puts paws.speak             # => Hello!
bruno = GoodDog.new("brown")        
puts bruno
puts BadDog.new(2,"bear")