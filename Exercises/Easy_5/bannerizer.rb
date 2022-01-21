# Needed additions:
# Further exploration - can wrap text when given limit
# stuck: try drawing out steps
# try decided on a specific data structure and how
# that gets manipulated throughout the program

def print_in_box(str)
  top_and_bottom = '+' + ('-'*(str.size+2)) + '+'
  middle_pad = '|' + (' '*(str.size+2)) + '|'

  puts top_and_bottom
  puts middle_pad
  puts "| #{str} |"
  puts middle_pad
  puts top_and_bottom
end

# # returns a new string truncated to appropriate limit
# def chop(str, limit)
#   str[0, limit]
# end

# returns an array of strings containing text
# below limit
def wrap(str, limit)
  words = str.split
  
  # create array
  wrapped_text = Array.new
  row_num = 0
  
  words.each do |word|
    # initialize the new row
    if wrapped_text[row_num] == nil
      wrapped_text[row_num] = ''
    end

    # increment to next row if limit reached
    if ((wrapped_text[row_num].size + word.size) > limit)
      row_num += 1
    end

    # debug output
    p "row num: #{row_num} || #{wrapped_text[row_num]}"

    # add text to current row
    wrapped_text[row_num] << word

    # add space in between words
    wrapped_text[row_num] << ' '
  end
  
  wrapped_text
end




p wrap('To boldly go where no one has gone before.', 10)

# print_in_box(chop('To boldly go where no one has gone before.', 20))
