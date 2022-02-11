require 'pry'

def fibonacci(n)
  prev = 1
  prev_2 = 1
  fib = 0
  (n-2).times do
    fib = prev + prev_2
    prev_2 = prev
    prev = fib
    # binding.pry
  end
  fib
end

puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
# puts fibonacci(100_001) # => 4202692702.....8285979669707537501