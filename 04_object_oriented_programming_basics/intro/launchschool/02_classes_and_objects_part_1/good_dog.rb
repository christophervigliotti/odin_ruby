class GoodDog

    #attr_reader: allows us to retrieve instance variables (getters)
    #attr_writer: allows us to set instance variables (setters)
    #attr_accessor: allows get and set
    attr_accessor :name, :height, :weight
    attr_writer :ssn
    

    def initialize(n,h,w,s) # constructor, an instance method
        @name = n
        @height = h
        @weight = w
        @ssn = s
    end

    def speak # an instance method
        # this calls the instance variable... "#{@name} says ARF!!"
        # this calls the instance method...
        "#{name} says ARF!!!"
    end
    
=begin
    def name
        @name
    end

    def name=(n)
        @name = n
    end
=end

    def ssn
        'xxx-xx-' + @ssn.split("-").last
    end

=begin
    def ssn=(s)
        @ssn = s
    end
=end

=begin
    def change_info(n,h,w,s)
        @name = n
        @height = h
        @weight = w
        @ssn = s
    end

    # this won't work bc name, height and weight are local variables
    def change_info(n,h,w,s)
        name = n
        height = h
        weight = w
        ssn = s
    end
=end

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
end
  
sparky = GoodDog.new("Wolf-enstein","1","2","999-99-9999") 
sparky.change_info("Barkley","500","90210","00-00-0000")
puts sparky.info