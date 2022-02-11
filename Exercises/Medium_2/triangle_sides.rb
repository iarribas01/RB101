def triangle(s1, s2, s3)
  if !valid?([s1, s2, s3])
    :invalid
  else
    # all three sides equal
    if (s1 == s2 && s2 == s3)
      :equilateral
    elsif [s1, s2, s3].uniq.length == 3
      :scalene
    else
      :isosceles
    end
  end
end

def valid?(sides)
  # all sides lengths greater than zero
  return false if sides.any?{ |v| v <= 0 }
  
  # sum of two shortest sides is greter than
  # length of longest side
  sides = sides.sort
  long_side = sides.pop

  if (sides.sum <= long_side)
    return false
  end
  
  true
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid