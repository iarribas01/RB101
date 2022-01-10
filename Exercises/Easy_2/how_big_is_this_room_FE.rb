#Further exploration

def calc_area(width, length)
  width*length
end

def convert_to_inches(feet)
  feet.to_f * 12.0
end

def convert_to_centimeters(feet)
  feet.to_f * 929.03
end

puts "Welcome to the room area calculator."

print "First, enter your WIDTH in feet: "
width = gets.chomp.to_f

print "Now, enter your LENGTH in feet: "
length = gets.chomp.to_f

sq_feet = calc_area(width,length)
sq_inches = convert_to_inches(sq_feet)
sq_cm = convert_to_centimeters(sq_feet)

puts "The area of the room is #{sq_feet} square feet (#{sq_inches} inches, "
puts "#{sq_cm} cm)."

