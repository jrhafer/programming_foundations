def reverse(list)
  new_list = []
  index = list.size - 1
  while index >= 0
    new_list << list[index]
    index -= 1
  end
  new_list
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]

# Further Exploration
def reverse(array)
  array.each_with_object([]) { |el, arr| arr.prepend(el) }
end
