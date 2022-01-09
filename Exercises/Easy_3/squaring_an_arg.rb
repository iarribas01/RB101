def multiply(num1, num2)
  num1*num2
end

def square(num)
  multiply(num, num)
end

def power(num, exponent)
  power = 1
  exponent.times{ power*=multiply(num, num) }
  power
end

puts power(2, 4)

# puts square(5) == 25
# puts square(-8) == 64