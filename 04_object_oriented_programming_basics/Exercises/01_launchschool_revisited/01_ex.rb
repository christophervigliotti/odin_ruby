# How do we create an object in Ruby? Give an example of the creation of an object.
class Meat
    its_rotten = false
    def is_rotten
        return true
        # return its_rotten 
        # ^ pops error because I am not properly referencing the property
    end
end

ham = Meat.new
p ham.is_rotten
# What is a module? What is its purpose? How do we use them with our classes? 
    print "a module is a container where we can mix methods and/or properties to other classes"
# Create a module for the class you created in exercise 1 and include it properly.
module Food
    expiration_date = '11/11/2011'
    def is_expired
        # puts expiration_date
        return '11/11/2011'
    end
end

class RedMeat
    include Food
end

roast_beef = RedMeat.new
roast_beef.is_expired