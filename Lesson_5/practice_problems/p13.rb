arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = arr.sort_by do |inner_arr|
  inner_arr.select { |n| n.odd? }
end

p result