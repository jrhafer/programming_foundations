num = nil

loop do
  puts ">> Please enter a number greater than 0:"
  num = gets.chomp.to_i
  break if num > 0
  puts "Invalid Input! Please enter number greater than 0."
end

operation = nil

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  puts "Invalid Input! Please enter 's' or 'p'."
end

product = (1..num).reduce(:*)
sum = (1..num).reduce(:+)

if operation.downcase == 's'
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif operation.downcase == 'p'
  puts "The product of the integers between 1 and #{num} is #{product}."
end

# Further exploration

num = nil

loop do
  puts ">> Please enter a number greater than 0:"
  num = gets.chomp.to_i
  break if num > 0
  puts "Invalid Input! Please enter number greater than 0."
end

operation = nil

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  puts "Invalid Input! Please enter 's' or 'p'."
end

product = (1..num).inject { |product, n| product *= n }
sum = (1..num).inject { |sum, n| sum += n }

if operation.downcase == 's'
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif operation.downcase == 'p'
  puts "The product of the integers between 1 and #{num} is #{product}."
end
