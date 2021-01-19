def show_multiplicative_average(numbers)
  product = 1.0
  numbers.each { |num| product *= num }
  avg = product / numbers.size
  puts "The result is #{format('%.3f', avg)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Further Exploration

# if we omit the #to_f, or assign the variable product to an integer, we
# wind up with only whole numbers as our answer.
