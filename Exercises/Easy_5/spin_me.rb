def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'Hello world'

p spin_me(str).object_id == str.object_id # "olleh dlrow"