arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

new_arr = arr.map {|list| list.sort {|a, b| b <=> a } }

p new_arr