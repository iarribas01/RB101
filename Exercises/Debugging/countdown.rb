def decrease(counter)
  counter - 1
end

counter = 10

counter.times do |val| # times method goes from 0 to n-1, but we're not using the current value
  puts counter - val
end

puts 'LAUNCH!'