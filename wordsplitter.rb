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
p splitter.find_all { |word| word.include?("d") }
p splitter.reject { |word| word.include?("d") }
p splitter.map { |word| word.reverse }
p splitter.any? { |word| word.include?("e") }
p splitter.count
p splitter.first
p splitter.sort