arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result = arr.map {|inner_arr| inner_arr.select {|n| n % 3 == 0} }

p result