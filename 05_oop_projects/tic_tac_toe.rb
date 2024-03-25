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
  EMPTY_BOARD = "1 | 2 | 3
  --------
  4 | 5 | 6
  --------
  7 | 8 | 9
  "

  def broadcast(message)
    @message_history.append(message)
    puts message
  end

  def change_player
    @whose_turn = @whose_turn == 1 ? 0 : 1
  end

  def check_for_win
    array.map! do |item|
      end_game unless (item - @moves[@whose_turn]).empty?
    end
  end

  def draw_board
    @moves[0].each { |x| @board.sub! x.to_s, 'X' }
    @moves[1].each { |x| @board.sub! x.to_s, 'O'}
    broadcast(@board)
  end

  def end_game
    broadcast("Player #{@whose_turn}wins.")
  end

  def start_game
    @whose_turn = rand(1..2)
    @message_history = []
    @moves = [[],[]]
    @board = EMPTY_BOARD
    broadcast("Player #{@whose_turn} goes first.")
  end

  def take_turn(space_number)
    if !@moves[0].include(space_number) && !moves[1].include(space_number)
      @moves[@whose_turn - 1].append(space_number)
      draw_board
      broadcast("Player #{@whose_turn} moved to space #{space_number}.")
      # and then check for a win
      check_for_win
      change_player
    else
      broadcast("Sorry Player #{@whose_turn}, that space is not available.")
    end
  end
end

# game = TicTacToe.new
# game.start_game

puts TicTacToe.instance_methods(false)

# throws an error
another_game = TicTacToe.new.start_game.take_turn(5)
# tic_tac_toe.rb:55:in `take_turn': undefined method `include' for nil:NilClass (NoMethodError)
# from tic_tac_toe.rb:55:in `<main>'