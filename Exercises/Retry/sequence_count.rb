# input two integers
  # first integer: count
  # second integer: first in the number sequence

# output: array 
  # contains same number of elements as count argument
  # values of each element will be multiples of the
  # starting number

# rules: 
  # count argument ALWAYS 0 or greater
  # starting num always an integer

# count: 5, start: 1 -> [1, 2, 3, 4, 5]
# count: 4, start: -7 -> [-7, -14, -21, -28]



def sequence(count, start_num)
  arr = Array.new(count, start_num)
  1.upto(count-1) do |index|
    arr[index] = arr[index-1]
    arr[index] += start_num
  end
  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []