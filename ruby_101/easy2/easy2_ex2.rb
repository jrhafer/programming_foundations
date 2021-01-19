puts "Please enter the width of the room in meters:"
width = gets.chomp.to_i
puts "Pleae enter the length of the room in meters:"
length = gets.chomp.to_i
square_meters = (width * length)
square_feet = square_meters * 10.763
puts "The area of the room is #{square_meters} square meters(#{square_feet}\
 square feet)."

# Further Exploration

puts "Please enter the width of the room in feet:"
width = gets.chomp.to_i
puts "Pleae enter the length of the room in feet:"
length = gets.chomp.to_i
square_feet = (width * length)
square_inches = square_feet * 144
square_centimeters = square_feet.to_f * 929.03
puts "The area of the room is:"
puts " #{square_feet} square feet"
puts " #{square_inches} square inches"
puts " #{square_centimeters} square centimeters"
