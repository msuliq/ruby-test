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

#displays relevant lines found
puts reviews