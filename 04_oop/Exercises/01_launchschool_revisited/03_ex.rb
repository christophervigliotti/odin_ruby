class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons,miles)
    puts miles/gallons
  end

  def to_s
    "my car is a #{color} #{year} #{@model}"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
MyCar.gas_mileage(13,351)
puts lumina

class Person
    attr_accessor :name
    def initialize(name)
      @name = name
    end
  end
  
  bob = Person.new("Steve")
  bob.name = "Bob"