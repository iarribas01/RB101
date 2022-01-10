# FE - this method will not work for extraneous
# zeros because the to_i method truncates any zeros

def palindromic_number?(num)
  num.to_s.reverse.to_i == num
end

def palindromic_number_1?(num)
  num.digits.reverse == num.digits
end

puts palindromic_number_1?(0502050) == true
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true