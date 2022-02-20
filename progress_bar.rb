#Print text-based spinner in terminal window while work occurs
spinner = Enumerator.new do |e|
    loop do
      e.yield '|'
      e.yield '/'
      e.yield '-'
      e.yield '\\'
    end
  end
  1.upto(100) do |i|
    printf("\rSpinner: %s", spinner.next)
    sleep(0.1)
  end

#Print text-based progress bar 0 to 100 percent. Each"=" # sign represents 5 percent
0.step(100, 5) do |i|
    printf("\rProgress: [%-20s]", "=" * (i/5))
    sleep(0.5)
end
puts

#Print 1 to 100 % in terminal using dynamic output
1.upto(100) do |i|
    printf("\rPercentage: %d%%", i)
    sleep(0.1)
end