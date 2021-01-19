def featured(number)
  if number >= 9876543210
    return "There is no possible number that fulfills those requirements"
  end
  loop do
    number += 1
    next if number.even?
    break if number % 7 == 0 && number.to_s.chars.uniq.join.to_i == number
  end
  number
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
