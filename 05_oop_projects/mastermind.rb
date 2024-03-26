# plays the game
class Game
    attr_accessor :game
    def initialize
        @game = Mastermind.new
        play_game
    end

    def play_game
        until @game.game_over do
            @game.take_turn(gets.chomp)
        end        
    end
end

# the game
class Mastermind
    HEADER = "* * * MASTERMIND * * *  "
    COLORS = ['R','G','B']    
    MAX_TURNS = 8
    ANSWER_SIZE = 3
    attr_reader :answer, :turn_number, :game_over

    def initialize
        reset_game
    end

    def draw_board
        system('clear')
        puts HEADER
        puts "Turn #{turn_number} of #{MAX_TURNS} | Colors #{COLORS} | Answer #{@answer}"
    end

    def generate_random_answer
        @answer = []
        ANSWER_SIZE.times do
            answer.push(rand(1..COLORS.size))
        end
    end

    def reset_game
        @turn_number = 1
        @game_over = false
        generate_random_answer
        draw_board
    end
    
    def take_turn(turn)

    end
end

a_game = Game.new