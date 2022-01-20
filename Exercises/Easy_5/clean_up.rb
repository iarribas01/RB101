# need to revisit

def cleanup(string)
  new_str = ''
  string.split.each do |word| 
    new_str << cleanup_word(word)
    new_str << ' '
  end
  new_str
end

def cleanup_word(word)
  new_str = ''
  word.chars.each do |char|
    if alphanumeric?(char)
      new_str << char
    end
  end
  new_str
end

def alphanumeric?(char)
  Array('a'..'z').include?(char.downcase) || Array(0..9).include?(char)
end

p cleanup("---what's my +*& line?")# == ' what s my line '