def oddities(arr)
  new_arr = []
  arr.each_index {|i| new_arr<<arr[i] if i%2 == 0}
  new_arr
end

def eventies(arr)
  new_arr = []
  arr.each_index {|i| new_arr<<arr[i] unless i%2 == 0}
  new_arr
end

def oddities_1(arr)
  new_arr = []
  for i in 0...arr.length
    next if i.odd?
    new_arr << arr[i]
  end
  new_arr
end


def oddities_2(arr)
  arr.select{|element| arr.index(element).even?}
end

# puts ([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []

# puts ([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts eventies([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
# puts eventies(['abc', 'def']) == ['def']
# puts eventies([123]) == []
# puts eventies([]) == []
