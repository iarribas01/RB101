def count_words(sentence)
  sentence.split(' ').length
end

book = File.open('full_book.txt')

book_lines = book.read

sentences = book_lines.split(/(?<=[\.\?!])/)

longest_sentence = sentences[0]
longest_length = count_words(longest_sentence)

sentences.each do |sentence|
  current_length = count_words(sentence)
  if current_length > longest_length
    longest_sentence = sentence
    longest_length = current_length
  end
end

p longest_length
p longest_sentence
