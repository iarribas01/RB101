# Good, but figure out how to keep
# that period mark after the four 
# after conversion... 

NUMBER_STRINGS = {
  'one' => 1,
  'two' => 2,
  'three' => 3,
  'four' => 4,
  'five' => 5,
  'six' => 6,
  'seven' => 7,
  'eight' => 8,
  'nine' => 9,
}

def word_to_digit(str)
  NUMBER_STRINGS.keys.each do |key|
    str.gsub!(/#{key}\W/i, NUMBER_STRINGS[key].to_s)
  end
  str.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
  str
end

puts word_to_digit('Please call me at one one Five FIVE five oNE two three four. Thanks. I live on two three  Maple Grove')