=begin
input:
1  5  8
4  7  2
3  9  6

desired_output:
1  4  3
5  7  9
8  2  6

essentially, the first column
becomes the first row, the second
column becomes the second row
the third column becomes the third row

  1. iterate through each row matrix[row][column]
    2. save each integer into a new array
    3. add this array to a new array
  4. continue until the end of the array has been reached

=end

def transpose(matrix)

  new_matrix = []
  for column in 0...3
    temp = []
    for num in 0...3
      temp << matrix[num][column]
    end
    new_matrix << temp
  end

  new_matrix
end

def transpose!(matrix)
  for column in 0...3
    for num in 0...3
      matrix[num][column], matrix[column][num] =  matrix[column][num], matrix[num][column] 
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

transpose!(matrix)

p matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]