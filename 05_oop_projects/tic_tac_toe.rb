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

  def broadcast(message)
    @message_history.append(message)
    puts message
  end

  def check_for_win
    array.map! do |item|
      if(item - @moves[@whose_turn]).empty?
        end_game
      end
    end
  end

  def end_game
    broadcast("Player #{@whose_turn}wins.")
  end

  def start_game
    @whose_turn = rand(1..2)
    @message_history = []
    @moves = [[],[],[]]
    broadcast("Player #{@whose_turn} goes first.")
  end

  def take_turn(space_number)
    if !@p1_squares.include(space_number) && !@p2_squares.include(space_number)
      @moves[@whose_turn].append(space_number)
      broadcast("Player #{@whose_turn} moved to space #{space_number}.")
      # and then check for a win
      check_for_win
    else
      broadcast("Sorry Player #{@whose_turn}, that space is not available.")
    end
  end
end

# puts TicTacToe.instance_methods(false)
game = TicTacToe.new
game.start_game

# throws an error
game.take_turn(5) 
# tic_tac_toe.rb:39:in `take_turn': undefined method `include' for nil:NilClass (NoMethodError)
# from tic_tac_toe.rb:53:in `<main>'