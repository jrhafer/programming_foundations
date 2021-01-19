def stringy(num)
  string = ''
  num.times do |num|
    num.even? ? string << '1' : string << '0'
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Further exploration

def stringy(num, option=1)
  string = ''
  num.times do |num|
    if option == 1
      num.even? ? string << '1' : string << '0'
    else
      num.even? ? string << '0' : string << '1'
    end
  end
  string
end

puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
