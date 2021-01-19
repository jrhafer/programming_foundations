[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Select returns values based on truthiness of the blocks's return value, and
# 'hi' is not false or nil. It therefore selects the element from the array and
# returns it because the last line is truthy.

# => [1, 2, 3]
