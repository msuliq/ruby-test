#script to compare steak grades

#set class for steak and grade parameter
class Steak
#add module Comparable
include Comparable 
    #CONSTANT grade scores for prime, choice and select steaks
    GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}
    attr_accessor :grade
    #define second steak that will be compared against
    #<=> enables comparable module
    def <=> (other)
        #comparison of grades
        if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
            return -1
        elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
            return 0
        else
            return 1
        end
    end
end

#test script
prime = Steak.new
prime.grade = "Prime"
choice = Steak.new
choice.grade = "Choice"
select = Steak.new
select.grade = "Select"

#run in terminal to check true or false
puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select}"
puts "select == select: #{select == select}"
puts "select <= select: #{select <= select}"
puts "select >= choice: #{select >= choice}"
print "choice.between?(select, prime): "
puts choice.between?(select,prime)