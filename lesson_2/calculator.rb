

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  float.to_f.to_s == input
end

def number(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
          'Subtracting'
         when '3'
          'Multiplying'
         when '4'
          'Dividing'
         end
  x = "A random line of code."

  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt format(MESSAGES['personal_greeting'], name: name)

loop do
  number1 = nil
  loop do
    prompt(MESSAGES['first_num?'])
    number1 = Kernel.gets().chomp()

    if integer?(number1)
      break
    else
      prompt(MESSAGES['not_valid_num'])
    end
  end

  number2 = nil
  loop do
    prompt(MESSAGES['second_num?'])
    number2 = Kernel.gets().chomp()

    if integer?(number2)
      break
    else
      prompt(MESSAGES["not_valid_num"])
    end
  end

  prompt(MESSAGES['operator_prompt'])

  operator = nil
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['correct_choices'])
    end
  end

  prompt (MESSAGES['op_being_performed']) # unable to format in YAML file

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt format(MESSAGES['answer'], result: result)

  prompt(MESSAGES['another_calc'])
  answer = gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['thanks_bye'])
