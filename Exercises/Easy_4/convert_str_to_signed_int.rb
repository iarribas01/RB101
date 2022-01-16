# try using a hash
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

# def string_to_signed_integer(string)
#   string_chars = string.chars
#   sign = case string_chars.first
#          when '+'
#            string_chars.shift
#            1
#          when '-'
#            string_chars.shift
#            -1
#          else
#            1
#          end

#   digits = string_chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value*sign
# end

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  sign = 1

  if string[0] == '+' || string[0] == '-'
    sign *= -1 if string[0] == '-'
    string = string[1..-1]
  end

  sign * string_to_integer(string)
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100