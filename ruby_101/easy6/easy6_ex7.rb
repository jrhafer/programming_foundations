def halvsies(array)
  if array.size.even?
    [array[0, array.size/2], array[array.size/2, array.size/2]]
  else
    [array[0, array.size/2 + 1], array[array.size/2 + 1, array.size/2]]
  end
end


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Further Exploration
# The LaunchSchool solution uses a float (2.0) so that when
# the array is odd, the array.size divided by 2.0 returns a float
# answer of 2.5 with can then be rounded up to 3 by the ceil method.
# If an odd-sized array were divided by integer 2, it would return a
# whole number rounded down.
