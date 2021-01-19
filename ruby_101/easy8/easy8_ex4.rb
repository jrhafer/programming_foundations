def leading_substrings(string)
  array = []
  num_chars = 1
  while num_chars <= string.size
    array << string.split('')[0, num_chars].join
    num_chars += 1
  end
  array
end

def substrings(string)
  result = []
  while string.size > 0
    result << leading_substrings(string)
    string.slice!(0)
  end
  result.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
  ]
