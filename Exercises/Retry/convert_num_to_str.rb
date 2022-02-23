DIGITS = ('0'..'9').to_a

# def integer_to_string(num)
#   digits = num.digits.reverse # get the number's digits
#   digits.map{|digit| DIGITS[digit]}.join
# end

def integer_to_string(num)
  # starting with num
  final_str = ''
  loop do
    num, digit = num.divmod(10)
    final_str.prepend(DIGITS[digit])
    break if num == 0
  end
  final_str
end



p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'





def digits(num)
  arr = []
  loop do
    num, digit = num.divmod(10) # [432, 1] then [43, 2] then [4, 3] ...
    arr << digit # append digit to array
    break if num == 0 # if there is no more left to divide
  end
  arr # return resulting array
end
  
digits(4321)




