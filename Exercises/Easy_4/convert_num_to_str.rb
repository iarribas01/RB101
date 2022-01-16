
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  # int.digits.reverse.join
  int_str = ''

  place = 10
  # starting with the smallest place value
  if int==0
    int_str = '0'
  end
  until int == 0
    # ex) 4321
    digit = int%place # extract num -> 4000  300  20  1
    int -= digit # take away from num -> 4321  4320  4300  4000 0
    digit = digit / (place/10) # take first digit of digit -> 4000 = 4
    int_str << DIGITS[digit] # conversion -> 4 = '4'
    place *= 10 # move to next place
  end
  int_str.reverse
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'