# PROBLEM:
# take a row, multiple rows, a column or multiple columns and return
# a transposed set of rows or columns.
#
# If one row is recieved, return columns numbering the the amount of elements
# in the one row
#
# - example: one row which is an array of an array -> [[1, 2, 3, 4]]
#            four colums will be returned [[1], [2], [3], [4]]
#
# - example: four columns represeneted as four arrays within an array ->
#            [[1], [2], [3], [4]]
#            a row will be returned as a single array -> [[1, 2, 3, 4]]
#
#
#
# Input: array or arrays
# Output: an array or arrays

# EXAMPLES:
# transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]



# DATA STRUCTURES:
# arrays

# [
#  [1, 2, 3, 4, 5],
#  [4, 3, 2, 1, 0],
#  [3, 7, 8, 6, 2]
# ]
#
# [
#   [1, 4, 3],
#   [2, 3, 7],
#   [3, 2, 8],
#   [4, 1, 6],
#   [5, 0, 2]
# ]

# Algorithm:
# 1. initialize the number of returned arrays that will be needed
#    - an array of arrays numbering the amount of elements in each arrays
#      that is input to be appended into 'returned arrays' array
# 2. iterate over each array that is input and place the objects at place
# ..........
# ..........

def transpose(array)
  result_arrays = []
  (array[0].size).times { result_arrays << [] }
  (0...array[0].size).each do |index|
    array.each do |array|
      result_arrays[index] << array[index]
    end
  end
  result_arrays
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
