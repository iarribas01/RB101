def cleanup(str)
  str.gsub(/[^a-zA-Z]+/, ' ')

  # new_str = []
  # str.each_char do |char|
  #   if ('a'..'z').include?(char.downcase)
  #     new_str << char
  #   else 
  #     if new_str.last != ' '
  #       new_str << ' '
  #     end
  #   end
  # end
  # new_str.join
end

puts cleanup("---what's my +*& line?") == ' what s my line '