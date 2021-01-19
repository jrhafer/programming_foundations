DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6',
  7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  result = ''
  loop do
    num, remainder = num.divmod(10)
    result << DIGITS[remainder]
    break if num == 0
  end
  result.reverse
end

def signed_integer_to_string(num)
  results = ''
  results << '-' if num < 0
  results << '+' if num > 0
  results + integer_to_string(num.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# Further Exploration

# integer_to_string method can be assigned initailly once as a variable and then
# the variable that references the return value can then be prepended with
# '-', '+' or nothing depending on the value of the initial number
