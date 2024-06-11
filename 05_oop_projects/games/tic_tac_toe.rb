class TicTacToe

  # constants
  BOARD_STATE = ['1','2','3','4','5','6','7','8','9']
  # TODO: read up on the ruby format() method (see the chat)
  # the BOARD string is stored into the TEMPLATE constant
  HEADERTEMPLATE = <<~HEADER
  * Vigtendo 5000 * TIC-TAC-TOE *
  -------------------------------
  HEADER
  BOARDTEMPLATE = <<~BOARD
    %1s | %1s | %1s
    ---------------
    %1s | %1s | %1s
    ---------------
    %1s | %1s | %1s

    %s's move
  BOARD
  OPTIONSTEMPLATE = <<~OPTIONS
    Who Goes First?  Press a key and then hit [ENTER]

    V = Vigtendo 5000 goes first.
    I = "I want to!"
    G = Get outa here!  Let Vigtendo 5000 randomly choose for me.
  OPTIONS
  SHOW_METHOD_NAMES = false
  WIN_CONDITIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,7]
  ]

  # properties/variables
  attr_reader :move_number, :whose_turn, :message_history, :game_state, :end_state, :im_done, :choice

  # methods
  def initialize
    puts 'TicTacToe.initalize()'  if SHOW_METHOD_NAMES
  end

  def draw_screen(screen)
    puts 'TicTacToe.draw_screen()' if SHOW_METHOD_NAMES
    # blarg! not working >> format(screen)
    puts HEADERTEMPLATE
    puts screen
  end

  def choose_options
    puts 'TicTacToe.choose_options()'  if SHOW_METHOD_NAMES
    until ['V','I','G'].include? choice
      system('clear')
      draw_screen(OPTIONSTEMPLATE.to_s)
      @choice = gets.chomp.upcase
    end
  end

  def play_game
    puts 'TicTacToe.play_game()'  if SHOW_METHOD_NAMES
    choose_options
    until @game_state == 'game_over' do
      take_turn
    end
  end

  def play_games
    puts 'TicTacToe.play_games()'  if SHOW_METHOD_NAMES
    until im_done do
      play_game
    end
  end

  def take_turn
    puts 'TicTacToe.play_games()' 

  end

=begin


  TEMPLATE = <<~BOARD
    TIC * TAC * TOE

    %1s | %1s | %1s
    ---------------
    %1s | %1s | %1s
    ---------------
    %1s | %1s | %1s

    %s's move
  BOARD

  attr_reader :moves, :whose_turn, :message_history, :game_over

  def initialize
    @whose_turn = rand(1..2)
    @message_history = []
    @moves = [[],[]]
    #@board = EMPTY_BOARD
    @game_over = false
    draw_board("Player #{@whose_turn} goes first.")
  end

  def player 
    @player ||= 'X' # this pattern is called 'memoization'
  end

  def board
    # callback method is used to initialize values
    @board ||= Array.new(9) { |index| (index + 1).to_s } 
  end

  def to_s
    # rubocop prefers format() over the use of %
    # otherwise these are the same
    # puts TEMPLATE % [*board, player]
    format(TEMPLATE, *board, player)
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

  # refactored methods

  def play_game
    until game_over do
      puts to_s
      take_turn(gets.chomp)
    end
  end

  def run
    until quit_game do
      play_game
    end
  end
=end
end