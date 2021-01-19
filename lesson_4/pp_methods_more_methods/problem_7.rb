[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# the method any?, when called on the array iterates over each element of the
# array. It prints the first element. It then returns true because 'odd?'
# is called on the first element in the array and the element is odd. It stops
# iterating b/c it has determined that the array contains an odd element.
