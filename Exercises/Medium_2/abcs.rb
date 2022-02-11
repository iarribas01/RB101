BLOCKS = [
  ['B', 'O'],
  ['X', 'K'],
  ['D', 'Q'],
  ['C', 'P'],
  ['N', 'A'],
  ['G', 'T'],
  ['R', 'E'],
  ['F', 'S'],
  ['J', 'W'],
  ['H', 'U'],
  ['V', 'I'],
  ['L', 'Y'],
  ['Z', 'M']
]

# b a t c h
# create a list of letters that can't be used
# look in keys for letter
# look in values for letter
# add letter and its pair to list of letters that can't be used
# move onto next letter

def block_word?(word)
  word_blocks = []
  word = word.upcase.chars
  for letter in word
      for block in BLOCKS
        if letter == block[0] || letter == block[1]
          word_blocks << block
          break
        end
      end
  end
  word_blocks.size == word_blocks.uniq.size
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true