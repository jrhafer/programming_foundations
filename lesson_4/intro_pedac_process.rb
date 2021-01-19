# Understand The Problem
#
# PROBLEM:
#
# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.
#
# Test cases:
#
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
#
# Some questions you might have?
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindrome words case-sensitively?
#
# input: string
# output: an array of substrings
# rules:
#      Explicit requirements:
#        - return only substrings which are palindromes
#        - palindrome words should be case sensitive, meaning "abBA"
#          is not a palindrome.
#
# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array
#
#
# def substrings(string)
#   p string[0..-3]
#   p string[0..-2]
#   p string[0..-1]
#   p string[1..-2]
#   p string[1..-1]
#   p string[2..-1]
# end

# (range 0 to 2(or string size - 2)) will iterate from index 0 to index 2
# last_idx = -(string size - 1)

def substrings(string)
  last_first_idx = string.size - 2
  first_last_idx = -(string.size - 1)
  result = []
  (0..last_first_idx).each do |start|
    (first_last_idx..-1).each do |stop|
        result << string[start..stop] if string[start..stop].size > 1
    end
  end
  result
end


p substrings('halo') == ['ha', 'hal', 'halo', 'al', 'alo', 'lo']
