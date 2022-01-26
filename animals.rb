#classes begin with uppercase
#superclass defines the subclasses

class Animal
    attr_reader :name, :age
    def name=(value)
        if value == ""
            raise "Name cannot be blank."
        end
    @name = value
    end
    def age=(value)
        if value < 0
            raise "An age of #{value} is not valid."
        end
        @age = value
    end
    def report_age
        puts "#{@name} is #{@age} years old."
    end
    def talk
        puts "#{@name} says Bark!"
    end
    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end
end

class Dog < Animal
        #re-defining methods inherited from superclass object
        def to_s
            "#{@name} the dog, age #{age}"
        end
end

class Cat < Animal
    #re-define method talk inherited from Animal
    def talk
        puts "#{@name} says Meow!"
    end
end

class Bird < Animal
        #re-define method talk and move inherited from Animal
        def talk
            puts "#{@name} says Chirp! Chirp!"
        end
        def move(destination)
            puts "#{@name} flies to the #{@destination}."
        end
end

class Armadillo < Animal
    def move(destination)
        puts "#{@name} unrolls!"
        super
    end
    def talk
        puts "#{@name} remains silent."
end 

#run in the terminal to test the code
canary = Bird.new
canary.name = "Canary"
canary.age = 1
canary.report_age
canary.talk
canary.move("tree")

rex = Dog.new
rex.name = "Rex"
rex.age = 3
rex.report_age
rex.talk
rex.move("bed")

whiskers = Cat.new
whiskers.name = "Whiskers"
whiskers.age = 7
whiskers.report_age
whiskers.talk
whiskers.move("litter box")

dillion = Armadillo.new
dillion.name = "Dillon"
dillion.age = 2
dillion.report_age
dillion.talk
dillion.move("burrow")

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 5

daisy = Dog.new
daisy.name = "Daisy"
daisy.age = 9

puts lucy, rex, daisy
end