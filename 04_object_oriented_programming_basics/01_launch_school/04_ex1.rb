module HasBed
   def can_fit(cubic_feet) 
    cubic_feet < 200
   end
end

class Vehicle
    @@create_count = 0    
    def self.how_many
        p @@create_count
    end
    def initialize
        @@create_count += 1
    end

    private

    def years_old
        Time.now.year - self.year
    end
end

class MyCar < Vehicle
    SMELLS_LIKE_PUG = true
end

class MyTruck < Vehicle
    include HasBed
    IS_KEI = true
end

p MyCar.ancestors
p MyTruck.ancestors

class Student
    def initialize(name, grade)
        @name = name
        @grade = grade
    end
    def better_grade_than?(other_student)
        grade > other_student.grade
    end
    protected
    def grade
        @grade
    end
end

joe = Student.new("Joe",90)
bob = Student.new("Bob",84)
puts "well done, Joe" if joe.better_grade_than?(bob)
puts "well done, Bob" if bob.better_grade_than?(joe)
