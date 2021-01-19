puts "Welcome to Mortgage/loan calculator!"

def prompt(message)
  puts("=> #{message}")
end

def validate_f(float)
  !float.nil? && float != 0
end

loop do
  prompt("What is your loan amount?")

  loan_amt = nil
  loop do
    loan_amt = gets.chomp.delete!(",").to_f
    break if validate_f(loan_amt)
    prompt("Please enter a numeric number greater than 0:")
  end

  prompt("What is your annual percentage rate?")
  prompt("Example: 3 for 3% or 2.5 for 2.5%.")

  apr = nil
  loop do
    apr = gets.chomp.to_f / 100
    break if validate_f(apr)
    prompt("Please enter a numeric percentage above 0:")
  end

  prompt("What is your loan duration in years?")

  loan_dur = nil
  loop do
    loan_dur = gets.chomp.to_i
    break if validate_f(loan_dur)
    prompt("Please enter a numeric value for years greater than 0.")
  end

  mo_int_rate = apr / 12
  loan_dur_mos = loan_dur * 12
  mo_pay = loan_amt * (mo_int_rate / (1 - (1 + mo_int_rate)**(-loan_dur_mos)))

  prompt("Your monthy payment is $#{format('%.2f', mo_pay)}")
  prompt("---------------------------------------------------")
  prompt("Would you like to make another calculation? Y or N?")
  answer = gets.chomp
  break if answer.downcase.start_with?('n')
end

prompt("Thank you for using Mortgage Calculator!")
