# Object Oriented Programming with Ruby

https://launchschool.com/books/oo_ruby

## The Object Model

### Encapsulation

Encapsulation is hiding pieces of functionality and making it unavailable to the rest of the code base. It is a form of data protection, so that data cannot be manipulated or changed without obvious intention. It is what defines the boundaries in your application and allows your code to achieve new levels of complexity. Ruby, like many other OO languages, accomplishes this task by creating objects, and exposing interfaces (i.e., methods) to interact with those objects.

Another benefit of creating objects is that they allow the programmer to think on a new level of abstraction. Objects are represented as real-world nouns and can be given methods that describe the behavior the programmer is trying to represent.

### Polymorphism

Polymorphism is the ability for different types of data to respond to a common interface. For instance, if we have a method that invokes the move method on its argument, we can pass the method any type of argument as long as the argument has a compatible move method. The object might represent a human, a cat, a jellyfish, or, conceivably, even a car or train. That is, it lets objects of different types respond to the same method invocation.

"Poly" stands for "many" and "morph" stands for "forms". OOP gives us flexibility in using pre-written code for new purposes.

### Inheritance

The concept of inheritance is used in Ruby where a class inherits the behaviors of another class, referred to as the superclass. This gives Ruby programmers the power to define basic classes with large reusability and smaller subclasses for more fine-grained, detailed behaviors.

### Modules / Mixins

Another way to apply polymorphic structure to Ruby programs is to use a Module. Modules are similar to classes in that they contain shared behavior. However, you cannot create an object with a module. A module must be mixed in with a class using the include method invocation. This is called a mixin. After mixing in a module, the behaviors declared in that module are available to the class and its objects.

## Classes & Objects - Part 1

https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1

### Initializing a New Object

Using the initialize method

```
class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new
```

### Instance Variables

Instance variables have the @ prefix

```
good_dog.rbCopy Code
class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")
```

### Instance Methods

```
class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
```

### Accessor Methods aka "Getter" Methods

```
class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def speak
    "#{@name} says a
```

### Mutator Methods aka "Setter" Methods

```
class GoodDog
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.get_name
sparky.set_name = "Spartacus"
puts sparky.get_name
```

### Ruby Conventions For Getters n' Setters

```
class GoodDog
  def initialize(name)
    @name = name
  end

  def name                  # This was renamed from "get_name"
    @name
  end

  def name=(n)              # This was renamed from "set_name="
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"
```

### More Ruby Conventions: attr_accessor

```
class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"
```

Our output is the same! The attr_accessor method takes a symbol as an argument, which it uses to create the method name for the getter and setter methods. That one line replaced two method definitions.

### attr_reader, attr_reader

But what if we only want the getter method without the setter method? Then we would want to use the attr_reader method. It works the same way but only allows you to retrieve the instance variable. And if you only want the setter method, you can use the attr_writer method. All of the attr_* methods take Symbol objects as arguments; if there are more states you're tracking, you can use this syntax: `attr_accessor :name, :height, :weight`

### Accessor Methods in Action

```
def speak
  "#{@name} says arf!"
end
```

Instead of referencing the instance variable directly, we want to use the name getter method that we created earlier, and that is given to us now by attr_accessor. We'll change the speak method to this:

```
def speak
  "#{name} says arf!"
end
```

Can you spot the change? By removing the @ symbol, we're now calling the instance method, rather than the instance variable.

Why do this? Why not just reference the @name instance variable, like we did before? Technically, you could just reference the instance variable, but it's generally a good idea to call the getter method instead.

Suppose we're keeping track of social security numbers in an instance variable called @ssn. And suppose that we don't want to expose the raw data, i.e. the entire social security number, in our application. Whenever we retrieve it, we want to only display the last 4 digits and mask the rest, like this: "xxx-xx-1234". If we were referencing the @ssn instance variable directly, we'd need to sprinkle our entire class with code like this:

```
# converts '123-45-6789' to 'xxx-xx-6789'
'xxx-xx-' + @ssn.split('-').last
```

And what if we find a bug in this code, or if someone says we need to change the format to something else? It's much easier to just reference a getter method, and make the change in one place.

```
def ssn
  # converts '123-45-6789' to 'xxx-xx-6789'
  'xxx-xx-' + @ssn.split('-').last
end
```

Now we can use the ssn instance method (note without the @) throughout our class to retrieve the social security number. Following this practice will save you some headache down the line. Just like the getter method, we also want to do the same with the setter method. Wherever we're changing the instance variable directly in our class, we should instead use the setter method. But there's a gotcha, which we'll cover next.

Suppose we added two more states to track to the GoodDog class called "height" and "weight":

`attr_accessor :name, :height, :weight`

This one line of code gives us six getter/setter instance methods: name, name=, height, height=, weight, weight=. It also gives us three instance variables: @name, @height, @weight. Now suppose we want to create a new method that allows us to change several states at once, called change_info(n, h, w). The three arguments to the method correspond to the new name, height, and weight, respectively. We could implement it like this:

```
def change_info(n, h, w)
  @name = n
  @height = h
  @weight = w
end
```

see: 02_...\good_dog.rb

### Calling Methods With self

To disambiguate from creating a local variable, we need to use self.name= to let Ruby know that we're calling a method. So our change_info code should be updated to this:

```
def change_info(n, h, w)
  self.name = n
  self.height = h
  self.weight = w
end
```

# 