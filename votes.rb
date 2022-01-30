#script for listing candidate info and counting cast votes

#count votes recorded in a text file
#create empty var outside the block
lines = []
#open text file and close after use
File.open("votes.txt") do |file|
    #all lines are kept in array
    lines = file.readlines
end

#create an empty hash to store votes
votes = {}
#process each line in array
lines.each do |line|
    #remove /n from end of the line
    name = line.chomp
    if votes[name]
    votes[name] += 1       
    else
    votes[name] = 1   
    end
end

#display votes in terminal
p votes

