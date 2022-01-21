def select_letter(string, letter)

  # using prebuilt methods
  # letter*string.count(letter)

  # using each method with block
  letters = ''
  string.split.each do |word|
    word.each_char do |char|
      letters << letter if char == letter
    end
  end
  letters
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""