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
    attr_reader :answer, :turn_number, :game_over, :guesses, :message

    def initialize
        @guesses = []
        reset_game
    end

    def draw_board
        system('clear')
        puts HEADER
        puts "Turn #{turn_number} of #{MAX_TURNS} | Colors #{COLORS} | Answer #{@answer}"
        puts @message
        puts @guesses
    end

    def generate_random_answer
        @answer = []
        ANSWER_SIZE.times do
            answer.push(COLORS[rand(1..COLORS.size)-1])
        end
    end

    def handle_correct_guess(guess)
      @message = 'You win!'
      draw_board
      @game_over = true
    end

    def handle_incorrect_guess(guess)
      @message = 'Incorrect guess.  TODO: provide feedback here'
      draw_board
    end

    def handle_valid_guess(guess)
      guess_is_correct = is_guess_correct(guess)
      add_to_guesses(guess)
      handle_correct_guess(guess) if guess_is_correct
      handle_incorrect_guess(guess) if !guess_is_correct
    end

    def is_guess_correct

    end

    def is_guess_valid(guess)
      valid_guess = true
      guess.chars.each do |n|
        valid_guess = false if !colors.include?(n)
      end
      valid_guess
    end

    def reset_game
        @turn_number = 1
        @game_over = false
        generate_random_answer
        draw_board
    end
    
    def take_turn(guess)
      guess = guess.upcase
      guess_is_valid = is_guess_valid(guess)
      handle_valid_guess(guess) if guess_is_valid
      # TODO: continue here
    end
end

a_game = Game.new