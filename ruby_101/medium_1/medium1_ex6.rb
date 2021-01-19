# stack in ruby is an array that uses Array#push and Array#pop instance methods
# each operation acts on the register which is the current value
# If an operation requires two values, it uses the register and the most recently added value in the stack(array)
# the result is then assigned to the register variable
# 

register = 0 # or current value
stack = []

# n: Place a value in the "register". Do not modify the stack.
# push: Push the register value on to the stack. Leave the value in the register
# ADD: Pops a value from the stack and adds it to the register value, storing the
# result in the register.
# SUB: Pops a value from the stack and subtracts it from the register value,
# storing the result in the register.
# MULT: Pops a value from the stack and multiplies it by the register value,
# storing the result in the register.
# DIV: Pops a value from the stack and divides it into the register value,
# storing the integer result in the register.
# MOD: Pops a value from the stack and divides it into the register value,
# storing the integer remainder of the division in the register.
# POP: Remove the topmost item from the stack and place in register
# PRINT: Print the register value

def minilang(program)
	register = 0
	stack = []
	program.split.each do |token|
		case token
		when 'ADD' 		then register += stack.pop
		when 'DIV' 		then register /= stack.pop
		when 'MULT'		then register *= stack.pop
		when 'MOD'  	then register %= stack.pop
		when 'SUB'  	then register -= stack.pop
		when 'PUSH' 	then stack.push(register)
		when 'POP' 		then register = stack.pop
		when 'PRINT' 	then puts register
		else				 			 register = token.to_i 
	  end 		
	end						
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands
