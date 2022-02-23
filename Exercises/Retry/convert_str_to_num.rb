require 'pry'

DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15
}

def hexadecimal_to_integer(str)
  digits = str.split('').map {|val| DIGITS[val]}
  final_int = 0
  # starting from the left, iterate through string
  digits.each do |digit|
    final_int = (16* final_int) + digit
  end
  final_int
  # return the resulting number
end


def string_to_integer(str)  # input: string of digits
  final_int = 0
  place_value = 1

  # split string into digits
  str.split('').reverse.each do |digit| # iterate through digits
    digit = DIGITS[digit]  # convert each digit into an integer
    final_int += digit * place_value
    place_value *= 10
    # binding.pry
  end
  # output: the string number as an integer
  final_int


  #### LS SOLUTION VS MY SOLUTION ####
  # 4 3 2 1
  ### my
  # 1 * 1 -> 1
  # 10 * 2 + 1 -> 21
  # 100 * 3 + 21 -> 321
  # 1000 * 4 + 321 -> 4321


  ### LS
  # 10 * 0 + 4 -> 4
  # 10 * 4 + 3 -> 43
  # 10 * 43 + 1 -> 431
end

p hexadecimal_to_integer('4D9f') #== 19871
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570


