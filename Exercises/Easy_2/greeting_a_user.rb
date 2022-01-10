# print "What is your name? "
# name = gets.chomp

# if name.end_with?('!')
#   puts "HELLO #{name.upcase.chop!}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}"
# end

print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end