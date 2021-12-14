class Card
            # #rand("A".."Z") # should equal => #add to Board class
    def initialize(face_value)
        @face_value = face_value               
        @face_down = true # should equal => up or down
    end



    #methods
    # one thats a boolean if face up or down
    # one that displays associated value based on the boolean
    def up_or_down
        if @face_down
            return " "
        else
            return @face_value
        end
    end
    
    # hide and reveal should interact with playing of the game
    # hide and reveal are commands to show or not show the value as opposed to returning 
    def hide
        @face_down = true unless @face_down
    end

    def reveal
        @face_down = false if @face_down 
    end

    def to_s
        # to_s means receive data in integer format and convert to string
        # not necessarily the same as gets.chomp
    end

    def ==(other_card)
        @face_value == other_card.face_value ##may need to revisit
    end







end