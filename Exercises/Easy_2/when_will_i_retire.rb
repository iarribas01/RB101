print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
ideal_retire_age = gets.chomp.to_i

year = Time.now.year
years_left = ideal_retire_age - age
retire_year = year + years_left

puts "It's #{year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"