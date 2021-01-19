['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# when this method is called, the empty hash is passed as an argument
# as the method iterates over the array, the first letter of each string is
# inserted into the array as the key and the value is the string until all 
# items from the array are inserted into the hash
