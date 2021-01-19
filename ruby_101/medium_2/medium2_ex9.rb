def sort(numbers)
  index = 0
  loop do
    if numbers[index] > numbers[index + 1]
      numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
    end
    index += 1
    break if index == numbers.size - 1
  end
  numbers
end

def bubble_sort!(numbers)
  loop do
    original = numbers.dup
    sort(numbers)
    break if numbers == original
  end
  numbers
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
