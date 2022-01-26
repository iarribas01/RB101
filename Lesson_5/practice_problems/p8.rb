hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, words|
  words.each do |word|
    word.chars.each do |char|
      print char if 'aeiouAEIOU'.include?(char)
    end
  end
end