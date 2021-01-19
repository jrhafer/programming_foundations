# given a number, return the fibonacci number's index + 1 in the sequence that
# contains that amount of digits for the first time, passed into method

# loop through the fib sequence until the num in that sequence returns
# a number contains that amount of integers as the number passed into method

def find_fibonacci_index_by_length(int_size)
  int_a = 1
  int_b = 1
  fib_sequence = [1, 1]
  loop do
    fib = int_a + int_b
    int_a, int_b = int_b, fib
    fib_sequence << fib
    break if fib.to_s.size >= int_size
  end
  fib_sequence.size
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
