
# def multiply_list(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |n, i|
#     new_arr << n*arr2[i]
#   end
#   new_arr
# end


def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_object([]) do |n, arr|
    arr << n*arr2[arr.size]
  end
end


def multiply_list(arr1, arr2)
  arr1.zip(arr2).map{|arr| arr.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]