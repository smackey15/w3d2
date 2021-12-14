class Card
            # #rand("A".."Z") # should equal => #add to Board class
    def initialize(face_value)
        @face_value = face_value               
        @face_down = true # should equal => up or down
    end



    #methods
    # one thats a boolean if face up or down
    # one that displays associated value based on the boolean
    def up_or_down(@face)
        # if @face is up, display @face_value, else if down display nothing
    end
    
    def hide
        @face_down = true unless @face_down
    end

    def reveal
        @face_down = false if @face_down 
    end

    def to_s
        if @face_down
            return " "
        else
            return @face_value
        end
    end

    def ==(other_card)
        @face_value == other_card.face_value ##may need to revisit
    end







end