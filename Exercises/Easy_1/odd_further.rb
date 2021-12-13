# further exploration part of odd

#rewrite is_odd? so the functionality works regardless

def is_odd?(number)
  number.abs.remainder(2)==1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true