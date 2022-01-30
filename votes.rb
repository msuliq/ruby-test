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

#script to display information about the candidates
#create class and data fields for a candidate
class Candidate
attr_accessor :name, :age, :occupation, :hobby, :birthplace
#set default fields for creation of new candidate profile
    def initialize(name, age, occupation, hobby, birthplace)
    #parameters passed to object attributes
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
    end
end 

#script for display of candidate info
def print_summary(candidate)
    puts "Candidate: #{candidate.name}"
    puts "Age: #{candidate.age}"
    puts "Occupation: #{candidate.occupation}"
    puts "Hobby: #{candidate.hobby}"
    puts "Birthplace: #{candidate.birthplace}"
end

candidate = Candidate.new("Amber Graham", 49, "Attorney", nil, "Miami")
print_summary(candidate)