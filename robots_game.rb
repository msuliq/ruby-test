#terminal game with moving robots

#class for robot
class Robot
    #accessors for movements coordinates
    attr_accessor: :x, :y
    #starting point from the center of the field
    def initialize
        @x = 0
        @y = 0
    end
    #methods for moves
    def right 
        self.x += 1
    end
    def left
        self.x =- 1
    end
    def up
        self.y += 1
    end
    def down 
        self.y -= 1
    end
end

#create an array of ten robots
arr = Array.new(10) {Robot.new}

arr.each do |robot|
    m = [:right, :left, :up, :down].sample
    robot.send(m)
end