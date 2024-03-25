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
    update_message(message)
    system('clear')
    moves[0].each { |x| 
      @board.sub! x.to_s, 'X'
    }
    moves[1].each { |x| 
      @board.sub! x.to_s, 'O'
    }
    puts @board
    puts @message_history.last5
  end

  def manage_game_state(valid_move)
    is_game_over = false
    WIN_CONDITIONS.each { |x|
      is_game_over = true if (x - moves[@whose_turn - 1]).empty?
    }
    all_spaces_taken = moves[0].size + moves[1].size == 9
    puts all_spaces_taken
    change_player if !@game_over && valid_move && !all_spaces_taken
  end

  def take_turn(space_number)
    space_number = space_number.to_i
    valid_move = !moves[0].include?(space_number) && !moves[1].include?(space_number)
    message = valid_move ? "Player #{@whose_turn} moved to space #{space_number}." : "Sorry Player #{@whose_turn}, space '#{space_number}' is not available. Try Again."    
    moves[@whose_turn - 1].append(space_number) if valid_move
    manage_game_state(valid_move) 
    draw_board(message)
  end

  def update_message(message)
    @message_history.append(message)
  end
end

# puts TicTacToe.instance_methods(false)

# throws an error
match = TicTacToe.new
until match.game_over do
  match.take_turn(gets.chomp)
end