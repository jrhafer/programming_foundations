def oddities(array)
  array.select { |num| array.index(num).even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

# Further Exploration

def oddities(array)
  new_array = []
  array.each do |num|
    new_array << num if array.index(num).odd?
  end
  new_array
end
