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
#set default hash value to zero to avoid nil return
votes = Hash.new(0)
#process each line in array
lines.each do |line|
    #remove /n from end of the line
    name = line.chomp
    #normalize lettercase in text file
    name.upcase!
    #assign votes to each name while processing lines
    votes[name] += 1
end

#display of results in terminal
votes.each do |name, count|
    puts "#{name}: #{count}"
end