DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def get_sign(num)
  sign = ''
  if num > 0
    sign = '+'
  elsif num < 0
    sign = '-'
  end
  sign
end

# def signed_integer_to_string(num)
#   sign = get_sign(num)
#   num = num.abs
#   integer_to_string(num).prepend(sign)
# end

def signed_integer_to_string(number)
  sign = case number <=> 0
  when -1 then "-"
  when +1 then "+"
  else         ""
  end
  integer_to_string(number.abs).prepend(sign)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'