# Stopping here :')
# Current problem: need to parse out backslash when
# importing text from YAML file

require 'yaml'

sentences = YAML.load_file('madlib_sentences.yml').values
sentence = sentences.sample
sentence.chars.delete_if {|char| char == "\\"}
p sentence

print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

puts sentence