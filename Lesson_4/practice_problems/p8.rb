# you should NEVER modify an array while iterating over it
# this leads to unintended consequences

#########################
# hypothesized output:
# 1
# 3
# hypothesized change: 
# numbers = [3, 4]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
p numbers


#########################
# hypothesized output: 
# 1
# 2
# hypothesized change: 
# numbers = [1, 2]

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
p numbers