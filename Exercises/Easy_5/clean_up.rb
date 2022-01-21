# need to revisit
def cleanup(sentence)
  new_sentence = ''
  sentence.split.each do |word| 
    new_sentence << clean_word(word)
    new_sentence << ' '
  end
  new_sentence
end

def clean_word(word)
  new_word = ''
  mult_spaces = false
  word.chars do |char|
    if alphanumeric?(char)
      mult_spaces = false
      new_word << char
    else
      unless mult_spaces
        mult_spaces = true
        new_word << ' '
      end
    end
  end
  new_word
end

def alphanumeric?(char)
  Array('a'..'z').include?(char.downcase) || Array(0..9).include?(char)
end

p cleanup("---what's my +*& line?")# == ' what s my line '