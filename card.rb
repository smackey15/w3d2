class Card

    @face_value = rand("A".."Z") # should equal => 
    @face # should equal => up or down

    #methods
    # one thats a boolean if face up or down
    # one that displays associated value based on the boolean
    def up_or_down(@face)
        # if @face is up, display @face_value, else if down display nothing
    end
    
    def hide
    end

    def reveal
    end

    def to_s
    end

    def ==
    end







end