['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# the method count is called on an array and the block's parameters for
# returning a true value is a string in the array that has less than
# four characters

# the number of strings in the array less that 3 characters in length is
# 2
