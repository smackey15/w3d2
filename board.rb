class Board

    CARDS = ("A".."Z").to_a

    attr_reader :pairs
    
    def initialize(num)
        @grid = Array.new(num) {Array.new(num, " ")}
        @size = @grid.flatten.size 
        @pairs = []
        (@size / 2).times do 
            pair = CARDS.sample
            2.times {@pairs << pair}
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
        @grid.each do |row|
            row.each do |spot|
                #should create new instance of Card Class at each spot
                #must be from valid pool of cards
            end
        end
    end

    def render
    end

    def won?
    end

    def reveal
    end








end