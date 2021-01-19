def interleave(arr_1, arr_2)
  arr_3 = []
  arr_1.each_with_index { |el, idx| arr_3 << el << arr_2[idx] }
  arr_3
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further Exploration

def interleave(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
