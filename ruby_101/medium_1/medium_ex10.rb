def fibonacci(num)
  return 1 if num <= 2
  fib_sequence = [1, 1]
  (num - 3).times do |fib_num|
    current_fib_num = fib_sequence[0] + fib_sequence[1]
    fib_sequence[0], fib_sequence[1] = fib_sequence[1], current_fib_num
  end
  fib_sequence.sum
end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

p fibonacci_last(15) == 0  # (the 15th Fibonacci number is 610)
p fibonacci_last(20) == 5 # (the 20th Fibonacci number is 6765)
p fibonacci_last(100) == 5 # (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) == 1 # (this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 # (this is a 208989 digit number)
p fibonacci_last(123456789) == 4
