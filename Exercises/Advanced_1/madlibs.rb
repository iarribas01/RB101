require 'yaml'

=begin
# p
  madlibs program
  read from a text file
  plug in selection of nouns, verbs, adjectives, adverbs
  build own list of words into program, but storyline
    should come from external source
  program should place random words of appropriate
  types into text and print result

    Questions:
      - are there more than one type of word per text?

# e
  Text data: The %{adjective} brown %{noun} %{adverb}
  Output: The sleepy brown cat noisily

# d
  text file: use <> to delimit words and regexp to parse
    The <adjective> brown <noun> <adverb>
  data structure: use array to store the order of the words
    [adjective, noun, adverb]
  iterate through string and unshift (take first element off)
  and replace the string
=end
# a
  # step 1:
  #   load file data

# data structure
=begin
hsh = {
  adjective: ['cute'],
  verb: ['hold', 'hug']


}
=end


# extracts all word types (adjective, noun, verb...)
# and returns an array of those word types
# in the order it is read
def get_word_types(string)
  string.scan(/<\w+>/).map do |word_type|
    word_type.delete('<>')
  end
end

def input_words_into_story(story, words)
  # split story words
  story.split.map do |word| # iterate through words
    if word.match(/<\w+>/)
      words.shift
    else
      word
    end
  end.join(' ')
end


### Load up story
text = YAML.load_file('madlibs_stories.yml') 
story = text[1]

p get_word_types(story)

### extract word types
words = get_word_types(story)

### get words from user
words.map! do |word|
  print "Enter a(n) #{word}: "
  gets.chomp
end

### piece together the madlib
p input_words_into_story(story, words)


# 2: "My favorite thing to do with <noun> is <verb> <adverb> until I <verb>."
# 3: "Nothing like a <adjective> cup of <noun> to start you off in the morning."

