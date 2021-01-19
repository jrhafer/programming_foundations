array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value.dup }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => all elements of array1 with same elements capitalized

# array2 is an array containing the same elements as array1. This includes
# all of the elements that begin with 'C' or 'S' in all caps. This is because
# even thought the two arrays are different objects, they are both referencing
# the same objects within both arrays and upcase! is a destructive method which
# changes the elements that both arrays are pointing at.

# Further exploration

# This feature can get you in trouble when you begin to modify
# arrays that you weren't aware that you modified. This can be avoided by

# This can be avoided by creating a new string for each element that is
# pushed into the new array. This can be achieved by passing the string#dup
