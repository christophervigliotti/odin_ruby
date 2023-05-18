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

## Resume Here

https://launchschool.com/books/oo_ruby/read/classes_and_objects_part1