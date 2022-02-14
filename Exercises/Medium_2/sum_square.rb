
def sum_square_difference(n)
  square_of_sums(n) - sum_of_squares(n)
end
  
# square of sum of first n positive integers
def square_of_sums(n)
  (1..n).inject(:+)**2
end

# sum of squares of first n positive integers
def sum_of_squares(n)
  (1..n).map{ |n| n**2 }.inject(:+)
end

p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150