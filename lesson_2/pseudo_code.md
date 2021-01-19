1. a method that returns the sum of two integers

*** casual pseudo-code ***

take two integers 
pass them as arguments in a method that adds them together
return the sum of the two integers

***formal pseudo-code***

START

given two integers called num1 and num2
block of method should add num1 and num2

PRINT sum of num1 and num2

END

________________________________________________________________________________________________________________
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

*** casual pseudo-code ***

given an colletion of strings

Iterate over the collection one by one.
  - save each element and add them together
  - make the array a single string of all individual strings combined
  
return the string that is made from smaller strings

*** formal pseudo-ccode ***

START

Given array of strings called 'strs_arr'

iterate over array and combine or join individual strings into single string

PRINT the single string 

END
________________________________________________________________________________________________________________
3. a method that takes an array of integers, and returns a new array with every other element

*** casual pseudo-code ***

given a collection of numbers

Iterate over the collection and determine every other number in group
  -save every other number and put into an other array
  
return the array with every other number from oringinal array


*** formal pseudo-code *** 

START

Given array of integers called 'arr'

SET i to 1

WHILE i + 1 is less than or equal to the amount of elements in the array
  READ the value of the element with index i and keep it in the array or push into another array
  IF i or the index number of the element in the array is odd
    keep it in the array with a mutating method
  ELSE
    disregard the number if the index is an even number

  i = i + 2
  
PRINT the array called 'arr' after only every other element has been kept in it

END










