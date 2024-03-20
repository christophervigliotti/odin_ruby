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

  def start_game
    @whose_turn = rand(1..2)
    @message_history = ["Player #{@whose_turn} goes first!"]
    @p1_squares = []
    @p2_squares = []
  end

  def get_most_recent_message
    @message_history.last
  end

  def take_turn(space_number) 
    # if space_number is not in p1_squares or p2_squares
    # then write the number to the correct px_squares array
    # and then check for a win
  end
end
