def rotate_array(arr)
  arr[1, arr.length-1] << arr.first
end

def rotate_rightmost_digits(num, rjust)
  digits = num.digits
  last_digits = rotate_array(digits[0, rjust].reverse)
  first_digits = digits[rjust, digits.size - rjust].reverse
  (first_digits + last_digits).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917