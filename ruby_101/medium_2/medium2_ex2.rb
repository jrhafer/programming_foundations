# PROBLEM: 
# given a list of letter pairs and a string, check that
# if the string contains a letter from a given pair, that 
# it only contains one from the pair and each can only
# occur once within the string
# 
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# 
# input: string
# output: boolean  

# EXAMPLES: 
# see test cases

# DATA STRUCTURES: 
# an array of arrays - each sub array containing a pair

# ALGORITHM: 
# initialize a result array that is empty called result
# iterate over each letter after converted into an array of 
# letters from word
# for each letter iterate over array of suby array of pairs
# and shovel the index of the sub array containing the 
# letter into the result array 

PAIRS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
         ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
         ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(word)
  indexes = []
  word.chars do |letter| 
    PAIRS.each do |pair|
      indexes << PAIRS.index(pair) if pair.include?(letter.upcase) 
    end 
  end 
  indexes == indexes.uniq
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true


