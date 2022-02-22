#script to split words in a string into separate elements

#create class for word splitter
class WordSplitter
    #add module Enumerable
include Enumerable
    #store string to be split into words
    attr_accessor :string
    def each
        #split the string by " " and process each word
        string.split(" ").each do |word|
            #current word passed to block in each
            yield word
        end
    end
end

#test script
splitter = WordSplitter.new
splitter.string = "how do you do"

splitter.each do |word|
    puts word
end

#methods enabled by Enumerable
#find all words matching parameter
p splitter.find_all { |word| word.include?("d") }
#reject all words matching parameter
p splitter.reject { |word| word.include?("d") }
#create array with words in reverse or of other param
p splitter.map { |word| word.reverse }
#return true if at least one element matches param
p splitter.any? { |word| word.include?("e") }
#count all elements in array
p splitter.count
#return first element in array
p splitter.first
# sort elements in array
p splitter.sort
#group elements by param
p splitter.group_by { |word|  word.include?("do") }
#find word with max length
p splitter.max_by { |word| word.length }
#get array of all words
p splitter.to_a