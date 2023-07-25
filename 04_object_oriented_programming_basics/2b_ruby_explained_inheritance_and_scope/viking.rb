class Person
    attr_accessor :name, :age, :health, :strength
    MAX_HEALTH = 120
    @@starting_health = 100

    def initialize(name, age, health, strength)
        #p name
        @name = name
        @age = age
        #@health = @@starting_health
        @health = health
        @strength = strength        
    end

    def heal
        self.health += 1 unless self.health + 1 > MAX_HEALTH
    end
end

class Viking < Person

    @@random_names = ["Erik","Lars","Leif"]
    attr_accessor :weapon

    def initialize(name, age, health, strength, weapon)
        #p name
        super(name, health, age, strength)
        @weapon = weapon
    end

    def self.create_warrior(name)
        age = rand * 20 + 15
        health = [age * 5, 120].min
        strength = [age / 2, 10].min
        Viking.new(name, health, age, strength,'Two-handed Axe')
    end

    def self.random_name
        if @@random_names.length == 0
            raise 'EXCEPTION at Viking.self.random_name 24: no random names left to choose from'
        end
        name = @@random_names.sample
        @@random_names.delete(name)
        name
    end

    def self.silver_to_gold(silver_pieces)
        silver_pieces / 10
    end

    # another way to declare class methods...not as common...
    class << self
        def gold_to_silver(gold_pieces)
            gold_pieces * 10
        end
    end

    def attack(enemy)
        # code to fight
    end

=begin

    # getter
    def health
        @health
    end

    #setter
    def health = (new_health)
        @health = new_health
    end

    def heal
        self.health = [self.health + 2, MAX_HEALTH].MIN
        puts "Ready for battle!"
    end

=end

    def heal
        2.times {super}
        self.shout("Ready for battle!")
    end

    def take_damage(damage)
        self.health -= damage # this also works > @health -= damage
        die if @health <= 0
        self.shout("OUCH!")
    end

    def shout(str)
        puts "I AM SHOUTING #{str}"
    end

    private 
        def die
            puts "#{self.name} has been killed :("
            self.dead = true    # assume we've defined a `dead` instance variable
        end

end

# p oleg = Viking.new("Oleg", 19, 100, 8)
# sten = Viking.create_warrior("Sten")
# p Viking.random_name
p '1'
warrior1 = Viking.create_warrior('Cheeto')
p warrior1.name
warrior1.take_damage(200)
=begin
p '2'
warrior2 = Viking.create_warrior(Viking.random_name)
p warrior2.name
p '3'
warrior3 = Viking.create_warrior(Viking.random_name)
p warrior3.name
p warrior3.heal
p '4'
warrior4 = Viking.create_warrior(Viking.random_name)
p warrior4.name
=end