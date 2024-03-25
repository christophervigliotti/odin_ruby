# shall we play a game?
class TicTacToe
  WIN_CONDITIONS = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ]
  EMPTY_BOARD = "  TIC * TAC * TOE

  1 | 2 | 3
  --------
  4 | 5 | 6
  --------
  7 | 8 | 9

  "
  attr_reader :moves, :whose_turn, :message_history, :board, :game_is_over

  def update_message(message)
    @message_history.append(message)
  end

  def change_player
    @whose_turn = @whose_turn == 1 ? 0 : 1
  end

  def check_for_win
    did_win = false
    puts WIN_CONDITIONS[0]
    WIN_CONDITIONS.each { |x|
      did_win = (x - moves[@whose_turn - 1]).empty?
      @game_is_over = true if did_win
      break if did_win
    }
    puts "Did Player #{whose_turn} make the wining move? #{did_win ? 'Yes' : 'No'}."
  end

  def draw_board
    moves[0].each { |x| 
      @board.sub! x.to_s, 'X' 
      #puts "draw_board, 0, #{x}"
    }
    moves[1].each { |x| 
      @board.sub! x.to_s, 'O'
      #puts "draw_board, 1, #{x}"
    }
    puts @board
    puts @message_history.last
  end

  def end_game
    update_message("Player #{@whose_turn} wins.")
    abort "Fun?"
  end

  def initialize
    puts "INITIALIZE"
    @whose_turn = rand(1..2)
    @message_history = []
    @moves = [[],[]]
    @board = EMPTY_BOARD
    @game_is_over = false
    update_message("Player #{@whose_turn} goes first.")
    draw_board
  end

  def take_turn(space_number)
    puts "Player #{@whose_turn} wants to move to space #{space_number}."
    if !moves[0].include?(space_number) && !moves[1].include?(space_number) # if it's an unoccupied space
      #puts moves[@whose_turn - 1].append(space_number) # add the move to the player's moves
      update_message("Player #{@whose_turn} moved to space #{space_number}.") # say what happened
      draw_board # redraw the board
      check_for_win # did the player win
      change_player # change player
    else
      update_message("Sorry Player #{@whose_turn}, that space is not available.")
    end
  end

end

# the thing that handles playing the game
class GameService 

  attr_reader :game

  def initialize
    play_game
  end

  def play_game
    game = TicTacToe.new
    while !game.game_is_over
      game.take_turn(gets.chomp)
    end
  end

end

# puts TicTacToe.instance_methods(false)

=begin  
  match = TicTacToe.new
  match.take_turn(gets.chomp)
  match.take_turn(1)
  match.take_turn(5)
  match.take_turn(4)
  match.take_turn(3)
=end

game = GameService.new