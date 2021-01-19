def spin_me(str)
  str.split.each { |word| word.reverse! }.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# the string is not the object that is being reversed. The method
# split is called on the string, and the string is no longer referrenced.
# str.split is an array that is iterated over, and each element is reversed.
# The string remains unaltered. 
