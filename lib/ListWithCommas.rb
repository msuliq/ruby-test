#script to separate words and list them with commas
#part of automated testing practice

#create class for listing with commas
class ListWithCommas
    attr_accessor :items
#define joining of items with commas or with "and"
    def join
        #if there one single item only
        if items.length == 1
            return items[0]
        #if list has only two subjects
        elsif items.length == 2
            return "#{items[0]} and #{items[1]}"
        end
        #last item added with "and" in front
        last_item = "and #{items.last}"
        #other items added with commas, elements from 0 to one before last are taken and joined with comma
        other_items = items.slice(0, items.length - 1).join(', ')
        "#{other_items}, #{last_item}"
    end
end

#test for one subject
one_subject = ListWithCommas.new
one_subject.items = ['a rodeo clown']
puts "A photo of #{one_subject.join}"

#test for two subjects
two_subjects = ListWithCommas.new
two_subjects.items = ['my parents', 'a rodeo clown']
puts "A photo of #{two_subjects.join}"

#test for three subjects
three_subjects = ListWithCommas.new
three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']
puts "A photo of #{three_subjects.join}" 