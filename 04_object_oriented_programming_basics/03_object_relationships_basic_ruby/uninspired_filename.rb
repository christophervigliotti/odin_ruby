class Cinema
    attr_accessor :name, :location
    def initialize(name, location)
        @name = name
        @location = location
        @movies = []
    end
    def add_movie(movie)
        @movies << movie
        movie.cinema = self
=begin
        For those who just want to speak code: 
        Self is the object receiving the method call. 
        If the method is an instance method, self 
        is always the instance that we are working with 
        right now. If the method is a class method, 
        self is going to be the class that the method is acting on.
=end
    end    
end

class Movie
    attr_accessor :title, :showtime, :cinema
    @@all = []
    def initialize(title, showtime)
        @title = title
        @showtime = showtime
        @@all << self
    end
end

p warehouse = Cinema.new("Warehouse Cinema", "The Golden Mile, Frederick")
p warehouse.name
p spider_man = Movie.new("Spider Man 12, Spider Many","9:00PM")
p spider_man.title
p warehouse.add_movie(spider_man)