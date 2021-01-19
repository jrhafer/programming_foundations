SUFFIXES = %w(1st 2nd 3rd 4th 5th)
numbers = []

def prompt_for_number(array)
  count = 0
  loop do
    puts "==> Enter the #{SUFFIXES[count]} number:"
    array << gets.to_i
    count += 1
    break if count > 4
  end
end

def prompt_for_last_num(array)
  prompt_for_number(array)
  puts "==> Enter the last number:"
  num = gets.to_i
  puts "The number #{num} appears in #{array}." if array.include?(num)
  puts "The number #{num} does not appear in #{array}." if !array.include?(num)
end

# start
prompt_for_last_num(numbers)
# end
