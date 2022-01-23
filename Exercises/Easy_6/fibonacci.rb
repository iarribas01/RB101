# fibonacci = (1, 1, 2, 3, 5, 8, 13, 21)
#   - first two numbers are 1
#   - each subsequent number is the sum of the two previous numbers

#   - calculates and returns the index of the FIRST FIBONACCI NUMBER that
#   has the number of digits specified as the argument

#   -> generate the fibonacci sequence
#   -> figure out how many digits are in a number

# checks to see if the number's length has reached the specified limit
def at_limit?(num, limit)
  num.to_s.size >= limit
end


def find_fibonacci_index_by_length(limit)
  
  # set the first two values equal to 1
  first = 1
  second = 1
  
  # starting with the third element
  index = 2

  loop do
    current = first + second
    break if at_limit?(current, limit)
    first = second
    second = current
    index += 1
  end

  index+1
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847