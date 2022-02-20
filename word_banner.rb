#code to print text in terminal slowly letter by letter
"how does this code work?".split(//).map(&:upcase).each do |c|
    sleep 0.3
    print c
end
#adds a new line to print the emoji
puts ""
#prints two ascii emojis as terminal animation
shrug = Enumerator.new do |e|
    loop do
      e.yield '^|_(ツ)_|^'
      e.yield '¯\\_(ツ)_/¯'
    end
  end
  1.upto(100) do |i|
    printf("\r %s", shrug.next)
    sleep(0.3)
end