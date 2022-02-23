# input: string
# output: string
  # consecutive duplicate collapsed to single char

# def crunch(str)
#   str.gsub(/(.)\1+/, '\1')
#   # new_str = []
#   # str.each_char do |char|
#   #   new_str << char unless char == new_str.last
#   # end
#   # new_str.join
# end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length-+1
    crunch_text << text[index] unless text[index] == text[index + 1]
    # puts "#{crunch_text} << #{text[index]}, #{text[index+1]}"
    index += 1
  end
  crunch_text
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# puts crunch('4444abcabccba') == '4abcabcba'
# puts crunch('ggggggggggggggg') == 'g'
# puts crunch('a') == 'a'
# puts crunch('') == ''