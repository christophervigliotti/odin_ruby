# Add a class method to your MyCar class that 
# calculates the gas mileage (i.e. miles per 
# gallon) of any car.

class MyCar
    attr_accessor :color, :year, :model

    def initialize(color,year,model)
        @color = color
        @year = year
        @model = model
    end

    def self.mileage(gallons,miles)
        puts "#{miles / gallons} miles per gallon"
    end
    
    def to_s
        puts "my car is a #{color} #{year} #{model}"
    end
end

MyCar.mileage(31,351)
hooptie = MyCar.new("rusty","1973", "Volkswagen Thing")
puts hooptie