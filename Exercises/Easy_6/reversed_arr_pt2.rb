def reverse(arr)
  # reversed_arr = []
  # index = arr.size-1
  # while index >= 0
  #   reversed_arr << arr[index]
  #   index -= 1
  # end
  # reversed_arr

  # arr.each_with_object([]) do |num, reversed_arr|
  #   reversed_arr.prepend(num)
  # end

end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true