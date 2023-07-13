=begin
    Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance 
    variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation 
    of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and 
    shut the car off.
=end


class MyCar
    # 2.a Add an accessor method to your MyCar class to change and view the color of your car. 
    # 2.b Then add an accessor method that allows you to view, but not modify, the year of your car.
    attr_accessor :color
    attr_reader :year

    def initialize(y,c,m)
        @year = y
        @color = c
        @model = m
        @speed = 0
    end
    def speed_up(number)
        @speed += number
        current_speed
    end
    def brake(number)  
        puts @speed-number
        @speed = (@speed-number < 0) ? 0 : number
        current_speed
    end
    def current_speed
        puts "you are now going #{@speed} florps per hour"
        if(@speed > 50) 
            puts "kaboom!"
            @speed = 0
        end
    end
    def off
        @speed = 0
        current_speed
    end
    def spray_paint(color)
        self.color = color
        puts "new color! #{color}"
    end 
    
end

stinky = MyCar.new(1988,'Metallic Pea','Yugo')
puts stinky.color
puts stinky.year
stinky.speed_up(44)
stinky.brake(1000)
stinky.spray_paint('Smoke')
stinky.speed_up(75)