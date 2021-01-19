# The PEDAC Process

## P: Understanding the Problem

- Establish the rules/ define the boundaries of the Problem
  - Assess available information
  - Restate Explicit requirements
  - Restate Implicit requirements
- Spend enough time. Don't rush this step.

**General Example**

Given a string, produce a new string with every other word removed.

- Explicit requirements:
  - Input: string
  - Output: new string
  - Remove every other word from the input substring

- Questions:
  - what do we mean by every other word? (even/ odd words? first?)
  - How do we define a word in this context?
    - Words are delimited by spaces


## E: Examples and Test Cases

- Can confirm/ refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries

## D: Data structure

- Help to reason with data more logically
- Help us to interact with data at an implementation level
- Thinking in terms of data structures is part of problem solving Process
- Data structures are closely linked to algorithms
  - Set of steps from input to Output
    - Involves structuring data in a certain way

## A: Algorithms

- A logical sequence of steps for accomplishing a task or objective
  - Closely linked to data Structures
  - Series of steps to structure data to produce the required Output
- Stay abstract/ high-level
  - Avoid implementation details like built-in methods or functions to prevent getting locked into approach
  - Don't worry about efficiency, just worry about functioning

## C: Implementing a Solution in Code

- Translating solution algorithm in code
- Think about algorithm in context of programming language
  - Language features and constraints
  - Characteristics of data Structures
  - Buitl in functions/ methods
  - Syntax and coding patterns
- Create test Cases
- Code with intent


** Sum Even Number Rows

Imagine a sequence of consecutive integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return an integer representing the sum of all integers in that row.

**Rules/ requirements**
- Sequence of even integers
- Sequence begins with 2
- Integers are consecutive
- Sequence is grouped into Rows
- Each row is incrementally larger: 1, 2, 3....
- Row 'number' equals the number of elements in the rows
  - Row 1 has 1 element, row 2 has 2 elements, ...
- Input: single integers
  - Identifies a 'row', which is a subset of a sequence of Integers
- Output: a single integers
  - The sum of the integers in the row identified by the input number

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
....

- How do we create the structure? (disregarding mathematical approach)

**Examples**

row number: 1 ---> sum of integers in row: 2
row number: 2 ---> sum of integers in row: 10
row number: 3 ---> sum of integers in row: 30
row number: 4 ---> sum of integers in row: 68

2 --> 2
4, 6 --> 10
8, 10, 12 --> 30
14, 16, 18, 20 --> 68

**Data Structures**

2
4, 6
8, 10, 12
14, 16, 18, 20
....

- Overall structure represents sequence as a whole
- Individual rows within overall structures
- Individual rows in a set order in context of sequence
- individual rows contain Integers
- Can assume that integers are in a set order in the context of the Sequence

[
[2],
[4, 6],
[8, 10, 12],
[14, 16, 18, 20],
.....
]

**Algorithm**

1. Create an empty 'rows' array to contain all the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
  - All the rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum

*Problem: Create a Row*

Rules:
  - Row is an array
  - Arrays contain integers
  - Integers are consecutive even numbers
  - Integers in each row form part of an overall larger Sequence
  - Rows are of different lengths
  - Input: the information needed to create the output
    - The start integer
    - Length of the row
  - Output: the row itself: '[8, 10, 12]'

  Examples:
  start: 2, length: 1 --> [2]
  start: 4, length: 2 --> [4, 6]
  start: 8, length: 3 --> [8, 10, 12]

  Data Structures:
  - An array of integers

  Algorithm:
  1. Create an empty 'row' array to contain the Integers
  2. Add the starting integers
  3. Increment the starting integer by 2
  4. Repeat steps 2 & 3 until the array has reached the correct length
  5. Return the 'row' array

  ## Final Thoughts

- PEDAC is not completely linear Process
- Move back and forward between the steps
- Switch from implementation mode to abstract problem-solving mode when necessary
- Don't try to problem solve at the code level
