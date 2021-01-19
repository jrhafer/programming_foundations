# Problem: pass an array into a method that moves the first element to the
# last spot in the new array (new array, not mutated original)

def rotate_array(numbers)
  new_numbers = []
  new_numbers << numbers[1,numbers.size] << numbers[0]
  new_numbers.flatten
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further Exploration

def rotate_string(word)
  new_word = ''
  new_word << word[1..-1] <<  word[0]
  new_word
end

p rotate_string("hello") == 'elloh'
p rotate_string("Jeremy Hafer") == "eremy HaferJ"

def rotate_integer(number)
  (number.to_s[1..-1] + number.to_s[0]).to_i
end

p rotate_integer(63542) == 35426
p rotate_integer(425_000) == 250_004
