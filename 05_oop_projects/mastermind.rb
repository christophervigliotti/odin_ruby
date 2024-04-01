# https://www.theodinproject.com/lessons/ruby-mastermind
# plays the game
=begin
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
=end

# the game
class Mastermind
  HEADER = '* * * MASTERMIND * * *'
  COLORS = ['R','G','B','Y','P']
  DIVIDER = '----------------------'
  MAX_TURNS = 8
  ANSWER_SIZE = 4
  attr_accessor :answer, :turn_number, :game_over, :guesses, :message, :player_is_human, :computer_guess_correct_positions

  def initialize
    system('clear')
    @guesses = []
    @computer_guess_correct_positions = [] # TODO: populate array with X elements set to false where X s answer_size
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
    puts "Answer #{@answer}"
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

=begin
  def get_correct_colors(guess) # returns an array of correct colors guessed
    correct_colors = []
    guess.each do |n|
      correct_colors.append(n) if @answer.include?(n)
    end
    correct_colors.uniq
  end
=end

  def generate_random_answer 
    @answer = generate_random_sequence
  end

  def generate_random_sequence
    random_guess = []
    ANSWER_SIZE.times do
      random_guess.push(COLORS[rand(1..COLORS.size)-1])
    end
    random_guess
  end

  def generate_guess
    @guess = @turn_number == 1 ? generate_random_sequence : generate_educated_guess
  end

  def generate_educated_guess
    

  end

  def handle_correct_guess(guess)
    @message = "Guess: '#{guess.to_s}'. You win!"
    draw_board
    @game_over = true
  end

  def handle_incorrect_guess(guess)
    has_another_turn = turn_number + 1 < MAX_TURNS
    correct_positions = get_correct_positions(guess)
    # correct_colors = get_correct_colors(guess)
    if_has_another_turn_suffix = has_another_turn ? 'Guess again.' : 'No more guesses.'
    # @message = "Turn #{@turn_number}. Guess No '#{guess.@turn_number}'. Correct positions '#{correct_positions}'. Correct colors '#{correct_colors}'. #{if_has_another_turn_suffix}"
    @message = "Turn #{@turn_number}. Guess No '#{@guess}'. Correct positions '#{correct_positions}'."
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
    guess_is_correct_length = guess.length == ANSWER_SIZE
    guess.each do |n|
      colors_guessed_are_valid = false unless COLORS.include?(n)
    end
    puts "guess_valid? guess: #{guess}, colors_guessed_are_valid: #{colors_guessed_are_valid}, guess_is_correct_length: #{guess_is_correct_length}"
    colors_guessed_are_valid && guess_is_correct_length
  end

  def reset_game
    @turn_number = 1
    @game_over = false
    puts 'Do you want to guess (G) or generate the correct answer and have the computer guess (any other character)'
    @player_is_human = gets.chomp.upcase == 'G'
    puts player_is_human ? 'You will guess' : 'Computer will guess'
    generate_random_answer if player_is_human
    get_answer_from_human unless player_is_human
    draw_board
  end

  def get_answer_from_human
    prompt = "Choose an answer that is #{ANSWER_SIZE} chars in length using letters #{COLORS.to_s}"
    puts prompt
    @answer = gets.chomp.upcase.chars
    until guess_valid?(@answer)
      puts "#{@answer} is not a valid answer. #{prompt}."
      @answer = gets.chomp.upcase.chars
    end
  end

  def take_turn
    guess = player_is_human ? gets.chomp : generate_guess
    guess_is_valid = guess_valid?(guess)
    handle_valid_guess(guess) if guess_is_valid
  end

  def play_game
    until @game_over 
      take_turn
    end
  end

end

#a_game = Game.new
#a_game.play_game
a_game = Mastermind.new
a_game.play_game