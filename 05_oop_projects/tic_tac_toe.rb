# https://www.theodinproject.com/lessons/ruby-tic-tac-toe
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
  attr_reader :moves, :whose_turn, :message_history, :board, :game_over

  def initialize
    @whose_turn = rand(1..2)
    @message_history = []
    @moves = [[],[]]
    @board = EMPTY_BOARD
    @game_over = false
    draw_board("Player #{@whose_turn} goes first.")
  end

  def change_player
    @whose_turn = @whose_turn == 1 ? 2 : 1
  end

  def draw_board(message)
    append_messages(message)
    system('clear')
    moves[0].each { |x| 
      @board.sub! x.to_s, 'X'
    }
    moves[1].each { |x| 
      @board.sub! x.to_s, 'O'
    }
    puts @board
    puts @message_history.last
  end

  def on_turn_taken(valid_move, space_number)
    win_condition_met = false
    WIN_CONDITIONS.each { |x|
      win_condition_met = true if (x - moves[@whose_turn - 1]).empty?
    }
    all_spaces_taken = moves[0].size + moves[1].size == 9
    message = valid_move ? "Player #{@whose_turn} moved to space #{space_number}. Player #{@whose_turn == 1 ? 2 : 1}'s turn." : "Sorry Player #{@whose_turn}, space '#{space_number}' is not available. Try Again."    
    message = 'Game Over.  No winner.' if all_spaces_taken 
    message = "Game Over. Player #{@whose_turn} wins!" if win_condition_met
    change_player if !win_condition_met && valid_move && !all_spaces_taken
    draw_board(message)
    @game_over = true if win_condition_met || all_spaces_taken
  end

  def take_turn(space_number)
    space_number = space_number.to_i
    valid_move = !moves[0].include?(space_number) && !moves[1].include?(space_number)
    moves[@whose_turn - 1].append(space_number) if valid_move
    on_turn_taken(valid_move, space_number) 
  end

  def append_messages(message)
    @message_history.append(message)
  end
end

# puts TicTacToe.instance_methods(false)

# throws an error
match = TicTacToe.new
until match.game_over do
  match.take_turn(gets.chomp)
end