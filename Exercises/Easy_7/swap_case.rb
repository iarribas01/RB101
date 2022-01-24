

# def swapcase(str)
#   letter_case = Hash.new
#   for letter in 'a'..'z'
#     letter_case[letter.to_sym] = letter.upcase
#     letter_case[letter.upcase.to_sym] = letter
#   end

#   str.chars.map do |letter|
#     if (('a'..'z').include?(letter)||('A'..'Z').include?(letter))
#       letter_case[letter.to_sym]
#     else
#       letter
#     end
#   end.join()
# 

def swapcase(str)
  str.chars.map do |letter|
    case letter
    when 'A'..'Z' then letter.downcase
    when 'a'..'z' then letter.upcase
    else               letter
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'