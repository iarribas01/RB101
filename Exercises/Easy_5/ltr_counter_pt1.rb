def word_sizes(string)

  words = string.split # => ['Hello', 'there']
  word_sizes = Hash.new

  for word in words
    count = 1
    word_sizes[word.size] == nil ? word_sizes[word.size] = 1 : word_sizes[word.size] += 1
  end

  word_sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}