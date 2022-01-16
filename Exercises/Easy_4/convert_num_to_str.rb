DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  # int.digits.reverse.join
  int_str = ''

  place = 1
  # starting with the smallest place value

  until int==0
    digit = DIGITS[int % place * 10]
    place *= 10
    # take the largest place value and add to empty string
    # subtract that value from the integer
    int -= int % place * 10
  # continue until the number is zero
  # reverse the string
  # return string
  end

end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'