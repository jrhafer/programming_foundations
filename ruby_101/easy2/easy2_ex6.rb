(1..99).each { |num| puts num if num.odd? }

# further exploration

number = 0
loop do
  number += 1
  next if number.even?
  puts number
  break if number == 99
end
