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
    #method for displaying robots on the field
    def label
        '*'
    end
end

#class for dog
class Dog
    def label 
        '@'
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
#create one dog on the field
arr.push(Dog.new (x: -12, y: 12))

#to end the loop press Ctrl+C
loop do
    #clears the window
    puts "\e[H\e[2J"

    #draw play grid with -12 to 12 along x and y axis
    (12).downto(-12) do |y|
        (-12).upto(12) do |x|
            #check for any robot with x and y coordinates
            somebody = arr.find { |somebody| somebody.x == x && somebody.y == y }
            #discovered robots are displayed as *
            if somebody
                print somebody.label
            #rest of the field is displayed as dots
            else 
                print '.'
            end
        end
        #adds a new line
        puts
    end

    #check if the robots catch the dog
    game_over = arr.combination(2).any? do |a, b|
        a.x == b.x && a.y == b.y && a.label != b.label
    end

    if game_over
        puts "Game over"
        exit
    end

    #robot is randomly moved
    arr.each do |somebody|
        commander.move(somebody)
    end
    #delay between the moves
    sleep 0.5
end