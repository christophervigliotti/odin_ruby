module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Walkable
  def walk
    "I'm walking?"
  end
end

module Climbable
  def climb
    "I'm climbing?!"
  end
end
  
class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak...!"
  end
end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end
  
class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
  include Climbable
end

#sparky = Dog.new
#neemo = Fish.new
#paws = Cat.new

#p sparky.swim
#p neemo.swim
#paws.swim

puts Animal.ancestors
fido = Dog.new
p fido.speak
p fido.walk
p fido.climb