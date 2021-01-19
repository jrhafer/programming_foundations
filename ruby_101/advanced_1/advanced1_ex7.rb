# problem:
# merge two arrays of numbers of the same or different sizes without
# calling the merge or sort instance method to return the finished array.
# return a single array in numerical order

# do not mutate the original two arrays
# the two arrays may vary in size
# one may even be empty
# one array may contain more than one of the same number
# but both arrays given, appear to be in numerical order
# if one array is empty, just return the other array

# input: two arrays
# output: one array (new object) that consists of array 1 object at index 0
# and then array 2 object at index 0, then element at index 1 of the first
# array and then the object at idex 1 of the second array, .....

# Examples:
# merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# merge([], [1, 4, 5]) == [1, 4, 5]
# merge([1, 4, 5], []) == [1, 4, 5]

# Data Structures:
# input data structures are two numerically ordered arrays, or possibly
# one empty array and two ordered arrays
# return an array of numerical elements in numerical order

# Algorithm:
# 1. initialize an array named 'result'
# 2. iterate over the first array and place element into the result array
#    (** individual method **)
# 3. then iterate over the second array and insert each element from the second
#    array into the index of the first array where the element from the first
#    array is greater than it (** Individual Method **)
# 4. return the result array


def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
