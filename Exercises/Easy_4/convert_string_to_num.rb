#PEDAC approach

def string_to_integer(num_str)
  # num -> our number converted as an integer
  num = 0

  # digit -> single digit as an integer
  digit = 0

  # split the string's characters into an array
  digits_str = num_str.chars.reverse

  # iterate through array until end is reached
  for i in 0...digits_str.length
    digit = digit_to_int(digits_str[i])
    digit = fix_digit(digit, i)
    num += digit
  end

  num
end

# mathematically extract the value of the number to add
def fix_digit(digit, index)
  placement = 10**index
  digit * placement
end

  # read each character and find its numeric equivalent
def digit_to_int(digit_str)
  num = case digit_str
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  end
end

# Examples/test
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
