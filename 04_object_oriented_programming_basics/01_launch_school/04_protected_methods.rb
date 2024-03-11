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

parent.superclass