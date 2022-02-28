require 'pry-byebug'

# def merge(first_arr, second_arr)
#   new_arr = []
#   index_1 = 0
#   index_2 = 0
#   until index_1 == first_arr.length || index_2 == second_arr.length
#     first = first_arr[index_1]
#     second = second_arr[index_2]
#     if first < second
#       new_arr << first
#       index_1 += 1
#     end
#     if second < first || second == first
#       new_arr << second
#       index_2 += 1
#     end
#   end

#   if index_1 == first_arr.length && index_2 != second_arr.length
#     new_arr << second_arr[index_2...second_arr.length]
#   elsif index_2 == second_arr.length && index_1 != first_arr.length
#     new_arr << first_arr[index_1...first_arr.length]
#   end

#   new_arr.flatten!
# end

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

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]