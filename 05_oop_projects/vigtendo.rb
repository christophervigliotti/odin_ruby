require './games/tic_tac_toe.rb'
class Vigtendo
    SHOW_METHOD_NAMES = true
    attr_reader :cartridge
    
    def initialize        
        puts 'Vigtendo.initalize()' if SHOW_METHOD_NAMES
        choose_cartridge
    end

    def choose_cartridge
        puts 'Vigtendo.choose_cartridge()' if SHOW_METHOD_NAMES
        # TODO: allow user to select from both games
        cartridge = TicTacToe.new
        cartridge.play_games
    end
end

# now you're playing with power!
your_vigtendo = Vigtendo.new