[1, 2, 3].reject do |num|
  puts num
end

# reject method returns elements of an array which are falsey, or
# when the block returns a value that is nil or false. Puts always
# returns nil, so each alement of the array is falsy - original array
# returned
