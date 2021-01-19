# PROBLEM:
# A Rational Number is any number that can be 
# represented as the result of the division between 
# two integers, e.g., 1/3, 3/2, 22/7, etc. The number 
# to the left is called the numerator, and the number 
# to the right is called the denominator.

# A Unit Fraction is a rational number where the 
# numerator is 1.

# An Egyptian Fraction is the sum of a series of 
# distinct unit fractions (no two are the same), such as:

# 1   1    1    1
# - + - + -- + --
# 2   3   13   15

# Every positive rational number can be written as an 
# Egyptian fraction. For example:

#     1   1   1   1
# 2 = - + - + - + -
#     1   2   3   6

# Write two methods: one that takes a Rational number as 
# an argument, and returns an Array of the denominators that 
# are part of an Egyptian Fraction representation of the number, 
# and another that takes an Array of numbers in the same format, 
# and calculates the resulting Rational number. You will need to 
# use the Rational class provided by Ruby.

# input: two digits with Rational class method being called on them
# both digits represent a numerator and denominator respectively
# output: array of denominators

# EXAMPLE: 
# egyptian(Rational(2, 1))    -> [1, 2, 3, 6] # add denominators until total of all rational numbers
											  # exceeds the value 2/1 or 2 
# egyptian(Rational(137, 60)) -> [1, 2, 3, 4, 5]
# egyptian(Rational(3, 1))    -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# Rational is a class method called on the two input values; numerator and denominator

# example number one is 2/1 which is the value if all of the numbers in the 
# array if 1 were the numerator and the number in the array were the 
# denominator. The sum of those fractions would equal 2 or 2/1 

# DATA STRUCTURE: 
# output array of numberators 

# ALGORITHM:
# 1. initialize a total variable at 0 
# 2. initialize result array empty 
# 3. initialize denominiator variable at 1
# 4. add Rational(1, denominator) to total if the sum of 
# 	 both is less than the argument num 
# 5. also add denominator to result array 
# 6. stop if total is same as argument num 

def egyptian(rational_num)
	total = 0
	result = []
	denominator = 1 
	loop do 
		if total + Rational(1, denominator) <= rational_num 
			total += Rational(1, denominator)
			result << denominator 
		end 
		return result if total == rational_num 
		denominator += 1
	end
end

p egyptian(Rational(2, 1))    == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

def unegyptian(denominators)
	result = 0 
	denominators.each do |denominator| 
		result += Rational(1, denominator) 
	end 
	result 
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)



