def crunch(string)
  new_string = ''
  string.chars.each do |char|
    new_string << char unless char == new_string[-1]
  end
  new_string
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''