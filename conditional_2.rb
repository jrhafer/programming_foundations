# RB101-RB109 - Small Problems > Medium 2 > Lettercase Percentage Ratio

# Problem:
# In the easy exercises, we worked on a problem where we
# had to count the number of uppercase and lowercase
# characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a
# hash that contains 3 entries: one represents the
# percentage of characters in the string that are lowercase
# letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least
# one character.

# input: a string of at least one character that may contain uppercase,
# lowercase or non-letter characters

# output: a hash that has the following keys; uppercase, lowercase and neither.
#         - value of each key is an integer that represnts the number of each
#           key in the string (number of lowercase, number of uppercase, etc.)
#           as a percentage of the total number of characters in the string

# question: do spaces count?
#           - yes, in the text cases, they appear to count as neither

# Example: see test cases

# D/S: output is a hash

# Algorithm -> High-level:
# 1. create an empty hash that will, at the end of the method, be the answer
#    one by one determine if each character will be an uppercase character, lower-
#    case character of neither.
# 2. keep count of each and add to the appropriate group in the answer hash
# 3. at the end, answer should be the returned hash answer with the values
#    updated to account for the number of each key in the string as a percentage
#    of the total number of characters in the string

# Algorithm -> Implementation Details #1:
# - intialize a variable called answer and assign it to a hash object with the
#   symbols :lowercase, :uppercase and :neither as keys. The value of each key
#   is the integer object with the value of 0
# - call .chars on the string argument passed to your method. Then call .each
#   on the return value. Each individual element of the array is then to be
#   passed into the block. The body of the block is an if else statement with
#   conditional as follows:
#   - if a range of a to z converted to an array includes the current element
#     then add 1 to the value of the key lowercase (use include? method)
#     - reference the key :lowercase in the answer hash and reassign the value
#       to itself plus one
#   - elsif a range of A to Z converted to an array contains the current element
#     then add 1 to the value of the key uppercase (use include? method)
#     - reference the key :uppercase in the answer hash and reassign the value
#       to itself plus one
#   - else add 1 to neither key
#     - reference the key :neither in the answer hash and reassign the value
#       to itself plus one
# - the last line of the method should be the variable answer passed to a helper
#   method called convert_to_percentages along with the original string argument
#   - this helper method will reassign each value in the key-value pairs, by
#     calling each on the hash, to the integer converted to a float divided by the
#     method .size called on the original string argument then multiplyed by 100

def convert_to_percentages(answer, string)
  answer.each do |key, value|
    answer[key] = value.to_f / string.size * 100
  end
end

def letter_percentages(string)
  answer = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |character|
    if ('a'..'z').include?(character)
      answer[:lowercase] += 1
    elsif ('A'..'Z').include?(character)
      answer[:uppercase] += 1
    else
      answer[:neither] += 1
    end
  end
  convert_to_percentages(answer, string)
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# Algorithm -> High-level:
# 1. create an empty hash that will, at the end of the method, be the answer
#    one by one determine if each character will be an uppercase character, lower-
#    case character of neither.
# 2. keep count of each and add to the appropriate group in the answer hash
# 3. at the end, answer should be the returned hash answer with the values
#    updated to account for the number of each key in the string as a percentage
#    of the total number of characters in the string

# Algorithm -> Implementation Details #2:
# - initialize variable answer and assign it to an empty hash
# - convert string argument to an array of individual characters and assign value
#   to a variable called characters - call .chars on string
# - on the next three lines assign key-value pairs to the empty answer hash
#   - hash symbol uppercase will equal .count called on characters array with
#     a block that returns the count of characters in range A to Z with float
#     called on it / characters.size * 100
#   - hash symbol lowercase will equal .count called on characters array with
#     a block that returns the count of characters in range a to z with float
#     called on it / characters.size * 100
#   - hash symbol neither will equal one hundred minus the values of uppercase
#     and lowercase added together
#- answer should be on last line - return value

def letter_percentages(string)
  answer = {}
  characters = string.chars
  answer[:lowercase] = characters.count { |char| ('a'..'z').include?(char) \
  }.to_f / characters.size * 100
  answer[:uppercase] = characters.count { |char| ('A'..'Z').include?(char) \
  }.to_f / characters.size * 100
  answer[:neither] = 100 - (answer[:uppercase] + answer[:lowercase])
  answer
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
