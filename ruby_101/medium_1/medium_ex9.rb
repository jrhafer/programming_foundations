def fibonacci(num)
  return 1 if num <= 2
  fib_sequence = [1, 1]
  (num - 3).times do |fib_num|
    current_fib_num = fib_sequence[0] + fib_sequence[1]
    fib_sequence[0], fib_sequence[1] = fib_sequence[1], current_fib_num
  end
  fib_sequence.sum
end


p fibonacci(13)

# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
#(1)(2)(3)(4)(5)(6) (7) (8) (9)(10)(11) (12) (13)

