def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end


puts square(5) == 25
puts square(-8) == 64

# Further Exploration

def square(num, power)
  num2 = num
  answer = 0
  loop do
    answer = multiply(num, num2)
    num2 = answer
    power -= 1
    break if power == 1
  end
  answer
end

p square(2, 6)
