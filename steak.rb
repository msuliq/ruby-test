#script to compare steak grades

#set class for steak and grade parameter
class Steak
    #CONSTANT grade scores for prime, choice and select steaks
    GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}
    attr_accessor :grade
    #define second steak that will be compared against
    def > (other)
        #comparison of grades
        GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
    end
end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
    puts "I'll take #{first_steak.inspect}"
end