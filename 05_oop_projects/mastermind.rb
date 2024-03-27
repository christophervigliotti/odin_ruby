# plays the game
class Game
  attr_accessor :game

  def initialize
    @game = Mastermind.new
  end
 
  def play_game # handles game state...terminates when the game is over
    until @game.game_over 
      @game.take_turn(gets.chomp) 
    end
  end
end

# the game
class Mastermind
  HEADER = '* * * MASTERMIND * * *'
  COLORS = ['R','G','B','Y','P']
  DIVIDER = '----------------------'
  MAX_TURNS = 8
  ANSWER_SIZE = 4
  attr_accessor :answer, :turn_number, :game_over, :guesses, :message

  def initialize
    system('clear')
    @guesses = []
    reset_game
  end

  def draw_board # all 'write to screen' logic is encapsulated here
    system('clear')
    puts HEADER
    puts DIVIDER
    puts 'HISTORY'
    @guesses.each do |n|
      puts n.to_s
    end
    puts DIVIDER
    puts @message
    puts DIVIDER
    puts "Turn #{turn_number} of #{MAX_TURNS} | Color choices: #{COLORS}"
    puts "Respond by typing #{ANSWER_SIZE} characters then hitting enter."
    #puts "Answer #{@answer}"
    puts DIVIDER
  end

  def get_correct_positions(guess) # returns a true/false array of user's guesses. elements are true when the correct color is in the correct position
    correct_positions = []
    guess.each_with_index do |element,index|
      puts index
      correct_position = element == @answer[index] ? true : false
      correct_positions.push(correct_position)
    end
    correct_positions
  end

  def get_correct_colors(guess) # returns an array of correct colors guessed
    correct_colors = []
    guess.each do |n|
      correct_colors.append(n) if @answer.include?(n)
    end
    correct_colors.uniq
  end

  def generate_random_answer 
    @answer = []
    ANSWER_SIZE.times do
      answer.push(COLORS[rand(1..COLORS.size)-1])
    end
  end

  def handle_correct_guess(guess)
    @message = "Guess: '#{guess.to_s}'. You win!"
    draw_board
    @game_over = true
  end

  def handle_incorrect_guess(guess)
    has_another_turn = turn_number + 1 < MAX_TURNS
    correct_positions = get_correct_positions(guess)
    correct_colors = get_correct_colors(guess)
    if_has_another_turn_suffix = has_another_turn ? 'Guess again.' : 'No more guesses.'
    @message = "Turn #{@turn_number}. Guess No '#{guess.@turn_number}'. Correct positions '#{correct_positions}'. Correct colors '#{correct_colors}'. #{if_has_another_turn_suffix}"
    @turn_number = @turn_number.next if has_another_turn
    draw_board
  end

  def handle_valid_guess(guess)
    guess_is_correct = guess_correct?(guess)
    guesses.append(guess)
    handle_correct_guess(guess) if guess_is_correct
    handle_incorrect_guess(guess) unless guess_is_correct
  end

  def guess_correct?(guess)
    guess == @answer
  end

  def guess_valid?(guess)
    colors_guessed_are_valid = true
    guess_is_correct_length = guess.length == ANSWER_SIZE.size
    guess.each do |n|
      colors_guessed_are_valid = false unless COLORS.include?(n)
    end

    colors_guessed_are_valid && guess_is_correct_length
  end

  def reset_game
    @turn_number = 1
    @game_over = false
    generate_random_answer
    draw_board
  end

  def take_turn(guess_string)
    guess = guess_string.upcase.chars
    guess_is_valid = guess_valid?(guess)
    handle_valid_guess(guess) if guess_is_valid
  end
end

a_game = Game.new
a_game.play_game