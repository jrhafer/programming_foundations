# PEDAC Process 

## P: Understandng the Problem 

	- Establish the rules/ define the boundaries of the problem
	  - Assess available information
	  - Restate Explicit requirements
	  - Identify Implicit requirements 
	- Spend enough time. Don't rush this step.

**General Example**

Given a string, produce a new string with every other word removed.

- Explicit Requirements: 
	- Input: string
	- Output: new string
	- Remove every other word from input string

- Questions:
	- What do we mean by every other word?
	- How do we define a word in this context?
	  - words are delimited by spaces

## E: Examples and Test Cases

- Can confirm or regute assumptions 
- Help to answer questions aboiut implicit requirements
- Act as assertions which help to codify the rules and boundaries
- 

## D: Data Structures

- Help to reason with data more logically 
- Help interact with data at an implementation level
- Thinking in terms of data structures is part of the overall 
  problem solving process
- Closely linked to algorithms 
  - Set of steps from input to output 
    - Involves structuring data in a certain way


## A: Algorithms

- A logical sequence of steps for accoomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to structure data to produce the required output
- Stay abstract/ high-level
  - Avoid implementation
  - Don't worry about efficiency for now


## C: Implementing a solution in Code

- Translating our solution algorithm to code
- Think about the algorithm in the context of programming language
  - Language features of data structures
  - Characteristics o data structures
  - Built in functions / methods 
  - Syntax and coding patterns 
- Create test cases
- Code with intent

## Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all the integers in that row. 

**Rules** 

- Sequence of even integers
- Sequence begins with two
- Integers are consecutive
- Sequence is grouped in rows
- Each row incrementally larger: 1, 2, 3, ...
- Row 'number' equals the number of elements in the row
  - Row 1 has 1 element, row 2 has 2 elements, ... 
- Inputs: a single integer 
  - Identified a 'row', which is a subset of a sequence of integers
 - Output: a single integer
   - The sum of the integers in the row identified by the input integer

- Sequence: 
2, 4, 6, 8, 10, 12, 14, 16, 18, ....

2
4, 6
8, 10, 12
14, 16, 18, 20 
.....

- How do we create this structure? 
 
**Examples** 

row number: 1 --> sum of integers in row: 2 
row number: 2 --> sum of integers in row: 10 
row number: 4 --> sum of integers in row: 68 


2 -> 2
4, 6 -> 10
14, 16, 18, 20 -> 68 

**Data Structures** 

2
4, 6
8, 10, 12
14, 16, 18, 20 
.....

- Overall structure reqpresents a sequence as a whole
- Individual rows within overall sequence
- Individual rows in a set order in context of sequence
- Individual rows contain integers 
- Can assume that integers are in a set order in the context of 
  the sequence 

[
  [2], 
  [4, 6], 
  [8, 10, 12], 
  [14, 16, 18, 20], 
  ....
]

**Algorithm** 

1. Creat an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array (most important step but no details)
   - could add substeps
   - could extract this step into a seperate problem (see below)
3. Repeat step 2 until all the necessary rows have been created  (how do we know this?)
   - All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row 
5. Return the sum 

*Problem: Create a row* 

Rules: 
- Row is an array 
- Array contains integers 
- Integers are consecutive even integers 
- Integers in each row form part of overall larger sequence
- Rows are of different lengths 
- Input: the information needed to create the output 
  - The starting integer
  - Length of the row
- Output: the row itself: '[8, 10, 12]'

Examples: 
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data Structures: 
- An array of integers

Algorithm: 
1. Create an empty 'row' to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence 
4. repeat steps 2 and 3 until the array has reached the correct length
5. return the array

## Final Thoughts

- Not a completely linear process
- Move baack and forward between the steps
- Switch from implementation mode to abstract problem solving mode when necessary
- Don't try to problem solve at the code level







































