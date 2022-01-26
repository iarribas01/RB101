arr = ['10', '11', '9', '7', '8']

p arr.map{|str|str.to_i}.sort_by{|a,b| b <=> a}