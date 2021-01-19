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

def palindromes(string)
  substrings(string).select do |element|
    element.size > 1 && element == element.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]
