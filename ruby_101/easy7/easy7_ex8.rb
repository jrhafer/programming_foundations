def multiply_list(arr_1, arr_2)
  multiplied_nums = []
  arr_1.each_with_index do |num, idx|
    multiplied_nums << num * arr_2[idx]
  end
  multiplied_nums
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration

def multiply_list(arr_1, arr_2)
  arr_1.zip(arr_2).map { |array| array[0] * array[1] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
