
require 'pry'

def rotate_array(arr)
  arr[1, arr.length-1] << arr[0]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(num)
  
  (num.digits.length).downto(2) do |rjust|
    num = rotate_rightmost_digits(num, rjust) # 51
  end
  
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845


# further exploration

=begin
  Could approach this problem without the two helper methods
  by implementing each part of the problem into a single
  method, however, this would be a bit complicated as it is
  best practice to keep each method to a single action.

  You can preserve zeros by dealing strictly with strings
  throughout the entire process and, if needed, convert the
  final string into an integer
=end