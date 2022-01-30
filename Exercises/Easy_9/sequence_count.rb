# works but needs to be refactored
# better ways of doing this

def sequence(count, first)
  arr = []
  number = first
  0.upto(count-1) do |i|
    arr << number
    number += first
  end
  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []