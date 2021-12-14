require_relative "card"

class Board

    CARDS = ("A".."Z").to_a

    attr_reader :pairs, :grid

    def initialize(num)
        @grid = Array.new(num) {Array.new(num, " ")}
        @size = @grid.flatten.size 
        @pairs = []
        (@size / 2).times do 
            pair = CARDS.sample ##can we get this to be unique elements??
            2.times {@pairs << Card.new(pair)}
        end
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @grid[row][col] = value
    end

    def populate
        @pairs.shuffle!
        (0...@grid.size).each do |row|
            (0...@grid.size).each do |col|
                pos = [row, col]
                self[pos] = @pairs.take(1).first
                @pairs = @pairs.drop(1)
                #should create new instance of Card Class at each spot
                #must be from valid pool of cards
            end
        end
    end

    def render
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def won?
    end

    def reveal
    end








end