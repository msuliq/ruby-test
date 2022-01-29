#program to sort through a text and return specific adjectives

#create variable for all lines outside the block
lines = []
#open reviews.txt file and closes afterwards
File.open("reviews.txt") do |review_file|
    #return file lines as array
    lines = review_file.readlines
end
    
    #create variable for relevant lines outside the block
    relevant_lines = []
    #processing each line in text
    lines.each do |line|
        #sort lines that include Truncated
        if line.include?("Truncated")
            #the line is added to variable
            relevant_lines << line
        end
    end
    
    puts relevant_lines