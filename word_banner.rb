#code to print text in terminal slowly letter by letter

"hello world!".chomp.split(//).map(&:upcase).each do |c|
    sleep 0.3
    print c
end