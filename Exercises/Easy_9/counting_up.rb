def sequence(num)
  if num >= 1
    Array(1..num)
  elsif num == 0
    [0]
  else
    Array(num..-1)
  end
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

p sequence(-5)