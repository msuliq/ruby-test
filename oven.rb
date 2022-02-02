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
        return "You need to turn the oven on first."
    end
    if @contents == nil
        return "There is nothing in the oven."
    end
    "golden brown #{contents}"
end 
end

#test run in terminal
#create contents for oven
dinner = ['turkey', 'casserole', 'pie']
oven = SmallOven.new
oven.turn_on
#process each contents item
dinner.each do |item|
oven.contents = item
puts "Serving #{oven.bake}"
end