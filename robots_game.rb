#terminal game with moving robots

#class for robot
class Robot
    #accessors for movements coordinates
    attr_accessor :x, :y
    #starting point from the center of the field
    def initialize( options={} )
        @x = options[:x] || 0 
        @y = options[:y] || 0
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

#class to command movements of robots
class Commander
    #Commander sends commands to move robots.
    #Methods take an object and send a random move 
    #command
    def move(who)
        m = [:right, :left, :up, :down].sample
        who.send(m)
    end
end

#create Commander object
commander = Commander.new

#create an array of ten robots
arr = Array.new(10) {Robot.new}

#to end the loop press Ctrl+C
loop do
    #clears the window
    puts "\e[H\e[2J"

    #draw play grid with -30 to 30 along x
    #and 12 to -12 along y axis
    (12).downto(-12) do |y|
        (-30).upto(30) do |x|
            #check for any robot with x and y coordinates
            found = arr.any? { |robot| robot.x == x && robot.y == y }
            #discovered robots are displayed as *
            if found
                print '*'
            #rest of the field is displayed as dots
            else 
                print '.'
            end
        end
        #adds a new line
        puts
    end
    #robot is randomly moved
    arr.each do |robot|
        commander.move(robot)
    end
    #delay between the moves
    sleep 0.5
end