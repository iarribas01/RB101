# def get_values(word_list)
#   hsh = Hash.new
#   word_list.each do |word|
#     ascii_val = 0
#     word.chars.each do |c|
#       ascii_val += c.ord
#     end
#     hsh[word] = ascii_val
#   end
#   hsh
# end

# def get_anagrams(word_list)
#   hsh = get_values(word_list)
#   values = hsh.values.uniq
#   groups = []
#   values.each do |value|
#     group = hsh.select do |_, v|
#       value == v
#     end
#     # p group.keys if group.length>1
#     groups << if group.length>4
#   end
#   groups
# end

def anagrams(word_list)
  sorted_words = word_list.map{|w| w.chars.sort.join}.uniq.to_h{|item| [item, []]}
  word_list.each do |word|
    sorted_words[word.chars.sort.join] << word
  end
  sorted_words.values.each{|group| p group if group.size>1}
end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams(words)