# refactor code to be more readable
# consistency with variable names

def print_in_box(str)
  top_and_bottom = '+' + ('-'*(str.size+2)) + '+'
  middle_pad = '|' + (' '*(str.size+2)) + '|'

  puts top_and_bottom
  puts middle_pad
  puts "| #{str} |"
  puts middle_pad
  puts top_and_bottom
end

def print_wrapped_in_box(str)
  max_length = get_max_length(str)
  top_and_bottom = '+' + ('-'*(max_length+2)) + '+'
  middle_pad = '|' + (' '*(max_length+2)) + '|'
  str = centerized(str)

  puts top_and_bottom
  puts middle_pad
  str.each do |row|
    puts "| #{row} |"
  end
  puts middle_pad
  puts top_and_bottom
end

def centerized(wrapped_text)
  max_length = get_max_length(wrapped_text)
  wrapped_text.map do |row|
    row.center(max_length)
  end
end


def get_max_length(wrapped_text)
  max_length = 0
  wrapped_text.each do |row| 
    if (row.size > max_length)
      max_length = row.size 
    end
  end
  max_length
end

# returns a new string truncated to appropriate limit
def chop(str, limit)
  str[0, limit]
end

# returns an array of strings containing text below or equal to limit
def wrap(message, limit)
  words = message.split
  
  # create array
  wrapped_text = Array.new # [] empty array
  row = 0
  wrapped_text[0] = '' # initialize first array element to avoid problems

  words.each do |word|
    if ((wrapped_text[row].size + word.size)>limit)
      row += 1
      wrapped_text[row] = '' # initialize array element to avoid problems
    end
    wrapped_text[row] << word
    wrapped_text[row] << ' '
  end

  wrapped_text = wrapped_text.map {|str| str.strip}
  
  wrapped_text
end

text = wrap('To boldly go where no one has gone before.', 30)
puts print_wrapped_in_box(text)

# print_in_box(chop('To boldly go where no one has gone before.', 20))
