# 1.  method that returns the sum of two integers
def sum(num1, num2)
  # add two numbers and return
  num1 + num2
end


# 2. a method that takes an array of strings, and returns a string that is
# all those strings concatenated together
def merge(strings)
# concatenate all strings together
  strings.join

end

# 3. a method that takes an array of integers
# returns a new array with every other element
def grab_half(arr)
  # return every other element in array
  # return every even index
  arr.select{|index| index.odd?}
end

puts grab_half(1..10)
