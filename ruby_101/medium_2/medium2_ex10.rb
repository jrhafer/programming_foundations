def sum_square_difference(num)
  square_sum = (1..num).to_a.sum**2
  sum_squares = (1..num).to_a.map { |number| number**2 }.sum
  square_sum - sum_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
