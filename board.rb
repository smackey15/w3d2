class Board

    def initialize(num)
        @grid = Array.new(num) {Array.new(num, " ")}
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, value)
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