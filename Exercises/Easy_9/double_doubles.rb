# p
# return a number multiplied by two
# unless  it is a doubled number, return as is

# doubled number - 
  # 1. even number of digits
  # 2. left side digits are exactly the same as the right
    # convert to a string
    # divide string into two equal pieces
    # check if they are equal to each other

def twice(num)
  if num.to_s.length.odd?
    num*2
  elsif is_double?(num)
    num
  else
    num*2
  end
end

def is_double? (num)
  num_str = num.to_s
  left = num_str[0, num_str.length/2]
  right = num_str[left.length, left.length]
  left==right ? true : false
end


p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10