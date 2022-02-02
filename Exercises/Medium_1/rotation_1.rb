# rotates and array
# move first element to end of array
# original array not modified

def rotate_array(arr)
  arr[1, arr.length-1] << arr.first
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

p rotate_string("Hi! How are ya?") == "i! How are ya?H"
p rotate_integer(12345) == 23451