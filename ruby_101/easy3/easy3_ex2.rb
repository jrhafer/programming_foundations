numbers = []

OPERANDS = [:+, :-, :*, :/, :%, :**]

def retrieve_numbers(array)
  puts "==> Enter the first number:"
  array << gets.to_i
  puts "==> Enter the second number:"
  array << gets.to_i
end

def display_operations(array)
  retrieve_numbers(array)
  OPERANDS.each do |op|
    puts "==> #{array[0]} #{op} #{array[1]} = #{array.reduce(op)}"
  end
end

display_operations(numbers)
