
puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the percentage?"
percentage = gets.chomp.to_f
tip = (bill * percentage) * 0.01
total = tip + bill

puts "The tip is #{sprintf("$%2.2f", tip)}"
puts "The total is #{sprintf("$%2.2f", total)}"
