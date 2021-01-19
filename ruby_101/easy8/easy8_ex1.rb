def sum_of_sums(numbers)
  length = 1
  sum = 0
  while length <= numbers.size
    sum += numbers[0, length].sum
    length += 1
  end
  sum
end

# another approach

def sum_of_sums(numbers)
  sum = 0
  (1..numbers.size).each { |num| sum += numbers.slice(0, num).sum }
  sum
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([1, 2, 3, 4, 5]) == 35
