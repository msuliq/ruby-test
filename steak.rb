#script to compare steak grades

#set class for steak and grade parameter
class Steak
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

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

puts first_steak <=> second_steak
puts second_steak <=> first_steak