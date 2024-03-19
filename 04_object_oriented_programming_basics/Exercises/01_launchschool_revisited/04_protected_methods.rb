class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end
  
malory = Person.new(64)
sterling = Person.new(42)

malory.older?(sterling)  # => true
sterling.older?(malory)  # => false
  
# malory.age 
  # => NoMethodError: protected method `age' called for #<Person: @age=64>

class Parent
  def say_hi
    p "hi from parent!"
  end
end
# p Parent.superclass

class Child < Parent
  def say_hi
    p "hi from child!"
  end
  def send
    p "send from Child"
  end
end

child = Child.new
child.say_hi

#lad = Child.new
#lad.send :say_hi

p child.instance_of? Child
p child.instance_of? Parent