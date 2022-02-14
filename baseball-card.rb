#ask user a series of questions and display input
#Questions asked
puts "Your name?"
name = gets.chomp
puts "Your age?"
age = gets.chomp
puts "Your favorite color?"
color = gets.chomp
#prints a separation line
puts "=" * 80
#display of the card
puts "Your name is #{name}\nYou are #{age} years old\nYour favorite color is #{color}"