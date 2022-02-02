#script to separate words and list them with commas
#part of automated testing practice

#create class for listing with commas
class ListWithCommas
    attr_accessor :items
#define joining of items with commas or with "and"
    def join
        #last item added with "and" in front
        last_item = "and #{items.last}"
        #other items added with commas, elements from 0 to one before last are taken and joined with comma
        other_items = items.slice(0, items.length - 1).join(', ')
        "#{other_items} #{last_item}"
    end
end

#test for two subjects
two_subjects = ListWithCommas.new
two_subjects.items = ['my parents', 'a rodeo clown']
puts "A photo of #{two_subjects.join}"

#test for three subjects
three_subjects = ListWithCommas.new
three_subjects.items = ['my parents', 'a rodeo clown', 'a prize bull']
puts "A photo of #{three_subjects.join}" 