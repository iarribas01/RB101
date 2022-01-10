# for i in 1...99
#   puts i if i.odd?
# end

# 1.upto(100) do |i| 
#   next if i.even?
#   puts i 
# end

1.upto(99) do |i| 
  next if i.odd?
  puts i 
end