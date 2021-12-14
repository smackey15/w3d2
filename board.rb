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
            sub_arr = row.map do |card|
                if card.face_down?
                    " "
                else
                    card.face_value
                end
            end
            puts sub_arr.join(" ")
        end
    end

    def won?
        #checks that there are no face down cards left
        @grid.each do |row|
            if row.none? { |card| !card.face_down? }
                return false
            end
        end
        true
    end

    def reveal(pos)
        self[pos].reveal if self[pos].face_down?
    end








end