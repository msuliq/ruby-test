#classes begin with uppercase
class Bird
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
        puts "#{@name} says Chirp! Chirp!"
    end
    def move(destination)
        puts "#{@name} flies to the #{destination}."
    end
end

class Dog
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

class Cat
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
        puts "#{@name} says Meow!"
    end
    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end
end

bird = Bird.new
bird.name = "Canary"
bird.age = 1
bird.report_age
bird.talk
bird.move("tree")

dog = Dog.new
dog.name = "Daisy"
dog.age = 3
dog.report_age
dog.talk
dog.move("bed")


cat = Cat.new
cat.name = "Fluffy"
cat.age = 7
cat.report_age
cat.talk
cat.move("litter box")