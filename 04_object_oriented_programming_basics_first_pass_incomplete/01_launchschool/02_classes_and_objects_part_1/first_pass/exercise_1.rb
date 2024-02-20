class MyCar
    attr_accessor :color, :model, :speed
    attr_reader :year
  
    def initialize(year, color, model)
      @year = year
      @color = color
      @model = model
      @speed = 0
    end
  
    def speed_up
        puts "speeding up from #{@speed} to #{@speed + 5}"
        @speed = @speed + 5
    end

    def brake
        @speed = 0
        puts "slamming on the brakes"
    end

    def shut_off
        self.brake
        puts "shutting off"
    end

    def spray_paint(color)
        @color = color
    end

end

pacer = MyCar.new(year = 1976, color = "Light Blue", Model = "Pacer")
puts pacer.year
pacer.speed_up
pacer.speed_up
pacer.speed_up
pacer.brake

puts pacer.color
pacer.spray_paint('Metallic Pea');
puts pacer.color