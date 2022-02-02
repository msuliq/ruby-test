#script to simulate oven operation and handle errors

#create class for oven
class SmallOven
#create attribute for oven contents
attr_accessor :contents
#define turning on of the oven
def turn_on
    puts "Turning oven on."
    @state = "on"
end
#define turning off of the oven
def turn_off
    puts "Turning oven off."
    @state = "off"
end
#define baking simulation
def bake
    unless @state == "on"
        raise "You need to turn the oven on first."
    end
    if @contents == nil
        raise "There is nothing in the oven."
    end
    "golden brown #{contents}"
end 
end

#test run in terminal
#handling of error with oven off
oven = SmallOven.new
oven.turn_off
oven.contents = 'turkey'
puts "Serving #{oven.bake}."

#handling of error with empty oven
oven = SmallOven.new
oven.turn_on
oven.contents = nil
puts "Serving #{oven.bake}."
