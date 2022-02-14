# right - one angle is 90
# acute all 3 angles are less than 90
# obtuse one angle is greater than 90
# valid triangle, sum is exactly 180 and angles greater than 0
def triangle(s1, s2, s3)
  sides = [s1, s2, s3]
  if sides.inject(:+) != 180 || sides.any?(0)
    :invalid
  elsif sides.any? (90)
    :right
  elsif sides.any? { |s| s > 90 }
    :obtuse
  elsif sides.all? { |s| s < 90 }
    :acute
  end
end



puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid