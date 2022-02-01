#script to split words in a string into separate elements

#create class for word splitter
class WordSplitter
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
splitter.string = "one two three four five"

splitter.each do |word|
    puts word
end