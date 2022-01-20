def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] = numbers[counter]*2
    counter += 1
  end

end

arr = Array(1..10)
double_numbers(arr)
p arr