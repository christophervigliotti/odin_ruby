require './games/tic_tac_toe.rb'

class Vigtendo

    attr_reader :cartridge
    
    def initialize
        p 'Vigtendo.initalize()'
        choose_cartridge
    end

    def choose_cartridge
        p 'Vigtendo.choose_cartridge()'
        # TODO: allow user to select from both games
        cartridge = TicTacToe.new
        cartridge.play_games
    end
end

# now you're playing with power!
your_vigtendo = Vigtendo.new