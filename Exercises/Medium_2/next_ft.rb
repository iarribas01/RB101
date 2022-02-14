
# return next featured number greater than arg
  # add 1 until it is a multiple of 7
  # add 7 until it is a featured number
  # return the resulting number
def featured(n)
  n = next_multiple(n)
  return "I don't wanna do that" if n >= 9_999_999_999
  until featured?(n)
    n += 7
  end
  n
end

# returns the next greater number mult of 7
def next_multiple(n)
  (n + 7) - (n % 7)
end
    
# check that a number is featured
def featured?(n)
  # featured num: odd, mult of 7, digits occur once each
  (n.odd?) && (n % 7 == 0) && (n.digits.uniq == n.digits)
end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
# featured(9_999_999_999) # -> There is no possible number that fulfills those requirements