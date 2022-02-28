def merge(first_arr, second_arr)
  new_arr = []
  index_2 = 0
  first_arr.each do |first|
    second = second_arr[index_2]
    while index_2 < second_arr.size && second < first
      new_arr << second
      index_2 += 1
      second = second_arr[index_2]
    end
    new_arr << first
  end
  new_arr.concat(second_arr[index_2..-1])
end


# merge sort
# continues to break down the array elements
# into NESTED sub arrays,
  # combine sub arrays in sorted order

=begin
  [9, 5, 7, 1] # big array length 4

[
  [9, 5], # big array length 2
  [7, 1] # sub array length 2
] 

->
[ # big array length 2
  [ # sub array length 2
    [9], # inner sub array length 1
    [5]
  ], 
  [
    [7], 
    [1]
  ]
]

sorting begins
[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]
  in recursive calls, what happens before the recursive
  call will traverse down the stack

    what happens after the recursive call will
    make its way back up the stack

  split array until each sub array contains one element
    [9, 5, 7, 1] -> arr[0..1] + arr[1..-1]
  [[9, 5], [7, 1]] -> arr[0][arr[0..1]] + arr[1]arr[1..-1]
  [[[9], [5]], [[7], [1]]]

  merge the two sub arrays

  return the result of the merge
=end

def merge_sort(arr)
  
  return arr if arr.length == 1

  part1 = arr[0...arr.length/2]
  part2 = arr[arr.length/2..-1]

  part1 = merge_sort(part1)
  part2 = merge_sort(part2)
  # split array until each sub array contains one element

  # merge the two sub arrays
  # merge(part1.sort, part2.sort)
  merge(part1, part2)
  # return the result of the merge
end

def iterative_merge_sort(arr)
  arr = arr.dup
  new_arr = arr.map {|val| [val]}
  until new_arr.size == 1
    new_arr << merge(new_arr.shift, new_arr.shift)
  end
  new_arr.flatten
end

# p split([9, 5, 7, 1])
p iterative_merge_sort([6, 2, 7, 1, 4])# == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]