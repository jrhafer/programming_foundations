# PROBLEM:
# ........

# DATA STRUCTURES:
# rotation of a square matrix
# [
#  [1  5  8],
#  [4  7  2],
#  [3  9  6]
# ]
# after the matrix is turned clockwise
# by 90 degress:
# [
#  [3  4  1],
#  [9  7  5],
#  [6  2  8]
# ]
#
# rotation of non-square matrix
# [
#  [3, 4, 1],
#  [9, 7, 5]
# ]
# after rotating the matrix above clockwise by 90 degrees
# [
#  [9, 3],
#  [7, 4],
#  [5, 1]
#]

def rotate90(array)
  result_arrays = []
  (array[0].size).times { result_arrays << [] }
  (0...array[0].size).each do |index|
    array.each do |array|
      result_arrays[index] << array[index]
    end
  end
  result_arrays.map { |array| array.reverse }
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2
