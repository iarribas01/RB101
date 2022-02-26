require 'pry-byebug'
=begin

let's get this straight...
n (columns)
1  2  3  4
5  6  7  8   m (rows)
9 10 11 12

[[1, 2, 3, 4]] == [[1], [2], [3], [4]]
  - create a temporary array
  - iterate through each sub array (only 1)
  - append first element to temporary array
  - add temporary array to new array
  - continue for all elements

[[1], [2], [3], [4]] == [[1, 2, 3, 4]]
  - create a temporary array
  - iterate through each sub array
  - append the first element to the temporary array
  - return the temporary array

[[1, 2, 3, 4, 5], 
[4, 3, 2, 1, 0], 
[3, 7, 8, 6, 2]] ==

  [[1, 4, 3], 
  [2, 3, 7], 
  [3, 2, 8], 
  [4, 1, 6], 
  [5, 0, 2]]

  [[1]] == [[1]]
=end

def transpose(matrix)

  new_matrix = []
  for m in 0...matrix[0].length
    temp = []
    for n in 0...matrix.length
      temp << matrix[n][m]
      # binding.pry
    end
    new_matrix << temp
  end

  new_matrix
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]