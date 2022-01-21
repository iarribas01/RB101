# non mutating multiply method
def multiply(numbers, scale)
  counter = 0
  doubled_numbers = []
  until counter >= numbers.length
    current_number = numbers[counter]
    current_number *= scale
    doubled_numbers << current_number
    counter += 1
  end
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]