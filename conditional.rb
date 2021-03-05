
# Please note that the numbered steps of the algorithm were created first;
# one-by-one.

# Implementation details were then added under each numbered, or high-level
# step, after entire high level/ abstract algorithm was created.

# Implementation details are preceded by "*".


# RB101-RB109 - Small Problems > Easy 9 > Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# Problem:
# The argument passed to the method is an array of sub_arrays that each contain
# a string and an integer.
# The method should return a single array that contains only string elements
# - the string elements should be the same strings within each sub array but
#   there should the same number of each string in the array as the value of the
#   integer that is in each string's respective sub_array

# input: outer_array with sub_arrays that each contain a string object and
#        an integer object
# output: a single array with only string objects as elements

# DataStructure: arrays

# Alorithm and Solution #1:
# 1. Create an empty array.
#    * intialize a variable called result and assign it to an empty array
# 2. For each sub_array, place the string into the emtpy array the same amount of
#    times as the integer element in the same sub_array
#    * iterate over the array of sub_arrays passed to the method with .each
#    * on each iteration, call the .times method on the element at index 1
#      append the string at index 0 into the result array that many times
# 3. Return the previously empty array created in the first step.
#    * return the result array at the bottom of the method

def buy_fruit(grocery_list)
  result = []
  grocery_list.each do |sub_list|
    sub_list[1].times { result << sub_list[0] }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Algorithm and Solution #2:
# 1. Change each of the sub_arrays within the outer array to n strings;
#    n representing the integer that the string shares a sub_array with
#    * call .map on each sub_array and the block parameter will be each
#      sub_array which will be transformed to the string, at index 0 multiplied
#      by the integer at index 1
#      * - wrap each of the string objects, in the multiplicaton equation, in brackets,
#          returning individual arrays containing n number of strings; n = integer
#          within each sub_array
# 2. return the new array that has been changed
#    * will be a one line method so will be return value
#    * sub array brakets can be removed by calling flatten on the return value

def buy_fruit(grocery_list)
  grocery_list.map { |sub_list| [sub_list[0]] * sub_list[1] }.flatten

end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
   ["apples", "apples", "apples", "orange", "bananas","bananas"]


#RB101 - RB109 Small Problems > Advanced 1 > Trasnpose 3x3

# Problem:
# given an array containing three sub_arrays that each contain three integer
# elements, change the contents of each sub_array in the following way:
# - the first sub_array should contain the first elements of each sub_array in
#   the order that each sub_array is listed in the outer array:
#   - first sub_array should contain, in order, it's own first element, the
#     first element of the second sub_array, and the first element of the
#     third sub_array
#   - the second sub_array should contain, in order, the first sub_array's second
#     element, it's own second element, and the third sub_array's third
#     element
#   - the third sub_array should contain, in order, the first sub's third
#     element, the second sub_array's third element, and its own third element
# the output should be the same outer array with the same sub_arrays, but
# the elements in each sub_array should be reassinged as noted above - the
# method should be destructive.

# input: an array of three sub_arrays that each contain three integer objects
# output: an array of three sub_arrays that each contain three integer objects

# Example:
# [1, 5, 8] =>> [1, 4, 3]
# [4, 7, 2] =>> [5, 7 ,9]
# [3, 9, 6] =>> [8, 2, 6]

# DataStructure:
# outer array with sub arrays containing integers

# Algorithm and Solution #1:

# 1. Make a copy of the oringinal array with original sub_arrays and elements
#    * create helper method called copy_array
#    * assign working_copy to a helper method that creates a copy that won't be
#      mutated when the elements are removed from the argument matrix
#      - intialize variable copy and assign to array object with three empty array
#        objects as elements
#      - call each_with_index on original array with an outer block argument sub_array
#        and index
#      - then call each on sub_array and append each element of that sub_array
#        into to the sub_array of the variable copy sub_array with current index
#      - return copy on last line of helper method

# 2. Remove all elements from each sub_array in original array argument matrix
#    * create helper method named empty_arrays
#    * call map! on outer_array to return sub_array structure within outer array
#    * then call select! on each sub_array with a block that evaluates to false
#      to return same array but empty

# 3. Then add first elements of each array to first empty sub_array
#    * the index of the first empty sub_array is 0 and we want to add the element
#      in each working_copy sub array at index 0 to our emptied outer_array's
#      sub array at the same index
# 4. Then add second elements of each sub_array to second empty sub_array
#    * the index of the second empty sub_array is 1 and we want to add the element
#      in each working_copy sub array at index 1 to our emptied outer_array's
#      sub_array at the same index
# 5. Then add third elements of each sub_array to third empty sub_array
#    * the index of the third empty sub_array is 2 and we want to add the element
#      in each working_copy sub array at index 2 to our emptied outer_array's
#      sub_array at the same index

# * call .each on working_copy with block parameter sub_array
#   then call each_with_index on each sub_array with arguments element, index
#   append element into matrix(original outer array) index
#   return matrix(last line)

# * lastly, return the original outer_array

# Code:

def copy_array(matrix)
  copy = [[],[],[]]
  matrix.each_with_index do |sub_array, index|
    sub_array.each do |element|
      copy[index] << element
    end
  end
  copy
end

def empty_arrays(matrix)
  matrix.map! do |sub_array|
    sub_array.select! { |element| !element }
  end
  matrix
end

def transpose!(matrix)
  working_copy = copy_array(matrix)
  empty_arrays(matrix)

  working_copy.each do |sub_array|
    sub_array.each_with_index do |element, index|
      matrix[index] << element
    end
  end
  matrix
end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose!(matrix) == [
  [1, 4, 3],
  [5, 7, 9],
  [8, 2, 6]
]

# Problem:
# all elements at index 0 of every sub_array will be appended to empty sub_array
# in results array at index 0
# all elements at index 1 of every sub_array will be appended to empty sub_array
# in results array at index 1
# all elements at index 2 of every sub_array will be appended to empty sub_array
# in results array at index 2

# Algorithm and Solution #2:
# 1. Create an array with three sub_arrays in it
#    * initialize variable called result_matrix and assign it to an array containing
#      three empty sub_arrays

# 2. For the three indexes of each sub_array (0 to 2):
#    * for range 0 to 3, call each and pass each integer into a block argument
#      called index

# 3. Append the first element in each sub_array of the array passed to Method
#    into the first empty sub_array created on line 1
# 4. Append the second element in each sub_array of the array passed to Method
#    into the second empty sub_array created on line 1
# 5. Append the first element in each sub_array of the array passed to Method
#    into the second empty sub_array created on line 1
#    * call each on matrix/ original array passed into method with block that
#      assigns each element to block parameter array, and within the block
#      append the element at current index of array into the sub_array at  current
#      index of result_matrix

# 6. Return array created on line 1 with all elements passed into coresponding
#    sub_arrays
#    * return result_matrix by putting it on last line of method

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

def transpose(matrix)
  result_matrix = [[], [], []]
  (0..matrix.size - 1).each do |index|
    matrix.each do |array|
      result_matrix[index] << array[index]
    end
  end
  result_matrix
end

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# RB101-RB109 - Small Problems > Easy 9 > Group Anagrams

# Problem:
# write a program that prints out groups of words that are anagrams. Anagrams
# are words that have the same exact letters in them but in a different order.

# All of the strings in the group should should fall into seperate groups. Each
# group consisits of string objects that contain all the exact same letters. The
# groups should be printed out in a way that they appear grouped together if all
# the letters of each word are the same

# input: array of word strings
# output: words printed out in groups that have the same exact letters, but in
#         different order

# Example: ["demo", "dome", "mode"]
#          ["neon", "none"]

# Algorithm and Solution #1:
# 1. determine how many different base words (words that contain same letters
#    in different order) - how many are there? What are they?
#    * initialize a variable called base_words and assign it to the array words
#      after map is called and a block calls chars on each word, then calls sort,
#      and then calls join. The uniq method is then called on the return value

# 2. Create an array that contains the same number of sub arrays as base words
#    exist in original array passed to the method
#    * initialize an empty array assinged to variable results
#    * call times on base_words.size and append an empty array into the results
#      array that many times

# 3. Change each word in the original array so that each words's letters are in
#    the same order and words that are anagrams for each other can be determined
#    * iterate over base_words by calling each with index with the block parameters
#      base and index
#    * then iterate over words and pass each element into a block that determines
#      if it is equal to base when chars is called on the string, the individual
#      strings are sorted, and then rejoined.
#
# 4. After the order of the letters in each word are changed, deterine if it
#    matches on of the base words and add to the appropriate sub array
#    * if the above condition evaluates to true, the word from the words array
#      is then appended into the sub array at the current index in results

# 5. Print out each word in a grouping that seperates them by words that are
#    common anagrams
#    * call each on the results array and pass each sub array into the outer block
#    * then call each on every sub_array and pass each word into a block
#      that outputs the word
#    # between the outer and inner block, puts dashes to seperate the groups of
#      words in each sub array

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def group_anagram(words)
  base_words = words.map { |word| word.chars.sort.join }.uniq
  results = []
  base_words.size.times { results << [] }
  base_words.each_with_index do |base, index|
    words.each do |word|
      results[index] << word if word.chars.sort.join.to_s == base
    end
  end
  puts "-----"
  results.each do |sub_array|
    sub_array.each do |word|
      puts word
    end
    puts '-----'
  end

end

group_anagram(words)

# Algorithm and Solution #2:
# 1. Create an empty array called answer
#    * initialize a variable named answer and assign it to an empty array
#    * initialize a variable named anagrams and assign it to an empty array

# 2. Put the words array in order so that all the words that contain the same letters
#    are consecutive
#    * call sort_by on the array words and the condition for sorting should be
#      calling sort on each individual word after calling .chars on the word
#    # should return an array of the words in the order those containing the
#      same letters
#    # assing the return value to a variable named sorted_words

# 3. Remove each word form the sorted array and put it into an empty array
#    until the words don't contain the same letters, then place the full array
#    back into the answer array
#    * iterate over sorted words with each method and append each word into an
#      initially empty array that is assinged to the variable anagrams
#    * if last element in the array anagram doesn't equal the currently iterated
#      element when sorted after chars is called on it, or anagrams isn't empty
#      then appened anagram array into answer and assign the value of anagram
#      to empty array
#    * otherwise, append word into anagram
#    * last anagrams array won't append into answer array, so on second to last
#      line append it into answer

# 4. print out each group of words within each sub_array in the answer array
#    * return anagram being iterated over by .each with a block that then
#      iterates over each sub array and prints each word out followed by
#      puts "----"

def group_anagrams(words)
  answer = []
  anagrams = []
  sorted_words = words.sort_by { |word| word.chars.sort }

  sorted_words.each do |word|
    if anagrams.empty? || anagrams.last.chars.sort == word.chars.sort
      anagrams << word
    else
      answer << anagrams
      anagrams = []
      anagrams << word
    end
  end
  answer << anagrams
  answer.each do |same_words|
    same_words.each do |word|
      puts word
    end
    puts "-----"
  end
end

group_anagrams(words)
