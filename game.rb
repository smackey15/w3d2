require_relative "board"
require_relative "card"

class Game
    def initialize(num)
        @board = Board.new(num)
        @prev_guess = #
    end

    def make_guess
        
    end

    def play
        @board.render
        # prompt the player for input
        # get a guessed pos
        # pass the guess pos to a make_guess method
    end

    def get_guess
        puts "make a guess representing a position in the form of '0 1'"
        gets.chomp.split(" ").map(&:to_i)
    end

    














end