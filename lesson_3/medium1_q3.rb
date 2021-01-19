def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  p factors
end

factors(0)

# bonus question #1 - determines if the number is divided evenly by
# the divisor without a remainder

# bonus question #2 - The method will return the array factors
