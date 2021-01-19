matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  result_matrix = [[], [], []]
  (0..matrix.size - 1).each do |index|
    matrix.each do |array|
      result_matrix[index] << array[index]
    end
  end
  result_matrix
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
