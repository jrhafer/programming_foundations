def leading_substrings(string)
  num_chars = 1
  list_leading_substrings = []
  while num_chars <= string.size
    list_leading_substrings << string[0, num_chars]
    num_chars += 1
  end
  list_leading_substrings
end

# Alternate Method

def leading_substrings(string)
  list_leading_substrings = []
  (1..string.size).each { |num| list_leading_substrings << string[0, num] }
  list_leading_substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
