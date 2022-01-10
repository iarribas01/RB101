
def calc_area(width, length)
  width*length
end

def convert_to_feet(meters)
  meters * 10.7639
end

puts "Welcome to the room area calculator."

print "First, enter your WIDTH in meters: "
width = gets.chomp.to_i

print "Now, enter your LENGTH in meters: "
length = gets.chomp.to_i

area_meters = calc_area(width, length)
# area_feet = calc_area(convert_to_feet(width), convert_to_feet(length))
area_feet = convert_to_feet(area_meters)

puts "The area of the room is #{area_meters} square meters (#{area_feet} feet)."
