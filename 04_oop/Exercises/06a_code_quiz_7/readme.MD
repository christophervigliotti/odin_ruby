# Quiz
https://www.codequizzes.com/ruby/beginner/modules-classes-inheritance

## Notes
    class methods are prefixed with self.
        class Lamp
            def self.i_am_a_class_method
            end
        end
    Create a BaseballPlayer class that is initialized with hits, walks, and at_bats. Add a batting_average() method that returns hits divided by at_bats as a floating point number. Add an on_base_percentage() method that returns (hits + walks) divided by at_bats as a floating point number. Demonstrate how the batting_average() and on_base_percentage() methods can be used.
        class BaseballPlayer
            def initialize(hits,walks,at_bats)
                @hits = hits
                @walks = walks
                @at_bats = at_bats
            end
            def batting_average
                (@hits / @at_bats).to_f
            end
            def on_base_percentage
                (@hits + @walks) / @at_bats.to_f
            end
        end

        angie = BaseballPlayer.new(50,50,100)
        p angie.batting_average()
        p angie.on_base_percentage()