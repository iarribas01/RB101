######## STUCK ON THIS PROBLEM ######## 
# program so that
  # 0's can be dropped without throwing error
  # 0's can be preserved
  # program without rotate_rightmost_digits and rotate_arrey methods

require 'pry'

def rotate_array(arr)
  p arr
  arr[1, arr.length-1] << arr[0]
end

def rotate_rightmost_digits(num, rjust)
  digits = num.digits
  last_digits = rotate_array(digits[0, rjust].reverse)
  first_digits = digits[rjust, digits.size - rjust].reverse
  first_digits + last_digits
end

def max_rotation(num)
  digits = num.digits.reverse

  ### METHOD 1###
  # (digits.size).times do |i|
  #   first = digits[0...i] # first part of array
  #   second = rotate_array(digits[i..-1])
  #   digits = first + second
  # end

  ### METHOD 2 ###
  digits.size.times do |i|
    digits = rotate_rightmost_digits(digits.join.to_i, (digits.size-i))
  end

  ### LAUNCH SCHOOL SOLUTION ###
  # number_digits = num.to_s.size
  # number_digits.downto(2) do |n|
  #   number = rotate_rightmost_digits(num, n)
  # end
  # num
  

  
  digits.join.to_i

end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845