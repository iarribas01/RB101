# brute force approach, no elegance
# doesn't handle punctuation very efficiently

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

def word_to_digit(string)
  # string.split.map do |word|
  #   word.gsub!(/\b#{NUMBER_STRINGS}\b/, NUMBER_STRINGS)
  # end.join(' ')

  # string.split.map do |word| 
  #   word, punctuation = split_punctuation(word)
  #   if NUMBER_STRINGS.key?(word.downcase)
  #     if punctuation == nil
  #       NUMBER_STRINGS[word.downcase]
  #     else
  #       NUMBER_STRINGS[word.downcase].to_s + punctuation
  #     end
  #   else
  #     if punctuation != nil
  #       word + punctuation
  #     else
  #       word
  #     end
  #   end
  # end.join(' ')
end

# def split_punctuation(word)
#   word_split = [nil, nil]
#   if ('a'..'z').include?(word.downcase.chars.last)
#     word_split[0] = word
#   else
#     word_split[0] = word[0..-2]
#     word_split[1] = word[-1]
#   end
#   word_split
# end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
# p split_punctuation('four.')