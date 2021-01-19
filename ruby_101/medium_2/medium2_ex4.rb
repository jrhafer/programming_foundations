# Problem: 
# given multiple parentheses, determine if they are valid 
# in the sense that they have a corrensponding paretheses 
# that would complete the set. 

# input: string of parentheses 
# output: boolean value

# Example: 
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true

# Data Structure: 
# string input can be converted to an array 
# array can be iterated over with only parantheses returned

# Algorithm:
# 1. convert input to a list of parentheses 
# 2. if the first element on list is ')', then 
#    return false 
# 3. if paranthesis is "(" the value is a positve 1
# 4. if parenthesis is ")" the value is a negative 1 
# 5. after iteration, the value should be 0 
# 6. 0 equals true, else false
# 7. total should never equal -1, else return false

def balanced?(input)
	total = 0
	parentheses = input.chars.select! { |el| el == ')' || el == "(" }
	parentheses.each do |el| 
		el == ')' ? total += -1 : total += 1 
		break if total == -1 
	end 
	total == 0 
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
