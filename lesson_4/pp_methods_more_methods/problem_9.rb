{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end

end

# map changes the elements within the array, and returns a new array.
# in this case, it returns and array with the values that are evaluated true 
# from the block. If it doesn't return true, nil is returned instead of the
# element
