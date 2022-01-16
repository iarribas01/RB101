# try using a hash
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15,
}

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  # value = 16*0 + 4 = 4
  # value = 16*4 + 13 = 973
  # value = 973 * 16 + 9 = 15 577
  # value = 15577 * 16 + 15
  digits.each { |digit| value = 16 * value + digit }
  value
end

p hexadecimal_to_integer('4D9f') == 19871