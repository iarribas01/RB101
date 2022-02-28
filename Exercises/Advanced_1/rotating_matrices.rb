# => rotated 90 degrees
# 1  5  8
# 4  7  2
# 3  9  6

# 3  4  1
# 9  7  5
# 6  2  8

# => rotated 90 degrees
# 3  4  1
# 9  7  5

# 9  3
# 7  4
# 5  1

def rotate90(matrix)

  new_matrix = []
  for m in 0...matrix[0].length
    temp = []
    for n in 0...matrix.length
      temp << matrix[n][m]
      # binding.pry
    end
    new_matrix << temp.reverse
  end

  new_matrix
end

def rotate(matrix, degrees)
  if [90, 180, 270].include?(degrees)
    (degrees / 90).times{matrix = rotate90(matrix)}
    matrix
  else
    matrix
  end
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

new_matrix1 = matrix1
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1# == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p rotate(new_matrix1, 90)
p rotate(new_matrix1, 180)
p rotate(new_matrix1, 270)
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2
