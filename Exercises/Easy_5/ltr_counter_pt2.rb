def word_sizes(string)

  words = string.split # => ['Hello', 'there']
  word_sizes = Hash.new(0)

  for word in words
    word = strip(word)
    word_sizes[word.size] += 1
  end

  word_sizes
end

# removes non alphanumeric characters
def strip(word)
  word.chars.select do |char| 
    alphanumeric?(char)
  end
end

def alphanumeric?(char)
  Array('a'..'z').include?(char.downcase) || Array(0..9).include?(char)
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}