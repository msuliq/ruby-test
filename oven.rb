#script to simulate oven operation and handle errors

#create two classes for exception handling: oevn off & oven empty
class OvenOffError < StandardError
end
class OvenEmptyError < StandardError
end

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
    #error handling for oven off
    unless @state == "on"
        raise OvenOffError, "You need to turn the oven on first."
    end
    #error handling for empty oven
    if @contents == nil
        raise OvenEmptyError, "There is nothing in the oven."
    end
    "golden brown #{contents}"
end 
end

#test run in terminal
#handling of error with oven off
dinner = ['turkey', 'casserole', 'pie']
oven = SmallOven.new
oven.turn_off
dinner.each do |item|
    #handling of exceptions for empty oven
    begin
        oven.contents = item
        puts "Serving #{oven.bake}."
    #if oven off, call error class and turn on the oven    
rescue OvenOffError => error
        oven.turn_on
        #restarts begin block once oven is on
        retry
    end
end

#handling of error with empty oven
dinner = [nil]
oven = SmallOven.new
oven.turn_on
dinner.each do |item|
    #handling of exceptions for empty oven
    begin
        oven.contents = item
        puts "Serving #{oven.bake}."
    #if oven empty, displays error message
    rescue OvenEmptyError => error
        puts "Error: #{error.message}"
        #ensure that oven is off afterwards
    ensure
        oven.turn_off
    end
end