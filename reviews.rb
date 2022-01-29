#program to sort through a text and return specific adjectives

#create variable for all lines outside the block
lines = []
#open reviews.txt file and closes afterwards
File.open("reviews.txt") do |review_file|
    #return file lines as array
    lines = review_file.readlines
end

#find all lines that have a line with Truncated in it and then 
#add those lines to relevant lines variable
relevant_lines = lines.find_all { |line| line.include?("Truncated") }

#remove signature lines in text that begin with --
#lines with -- are rejected from the relevant lines
reviews = relevant_lines.reject { |line| line.include?("--") }

#find adjective in each line, which follows "is" in a sentence
def find_adjective(string)
    #words split by space are sorted out
    words = string.split(" ").map { |s| s.gsub(/[[:punct:]]/, '') }
    #NB:
    #split returns arrays and gsub does not work on arrays
    #so map is used here to apply gsub to strings and remove
    #punctuation from results

    #find "is" among the sorted out words
    index = words.find_index("is")
    #adjective follows after "is" in a sentence
    words[index+1]
end

#find adjectives is applied to review, found adjectives are
#stored in adjectives array
adjectives = reviews.map do |review|
    adjective = find_adjective(review)
    "'#{adjective.capitalize}'"
end

#displays all lines with Truncated in it
#puts relevant_lines
#displays lines found excluding signature lines
#puts reviews

#displays found adjectives relevant to Truncated
puts "The critics agree, Truncated is:"
puts adjectives