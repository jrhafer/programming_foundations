def multiply_all_pairs(arr_1, arr_2)
  arr_1.product(arr_2).map { |array| array.reduce(:*) }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

def multiply_all_pairs(arr_1, arr_2)
  arr_3 = []
  arr_1.each do |num|
    arr_2.each { |num_2| arr_3 << num * num_2 }
  end
  arr_3.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
