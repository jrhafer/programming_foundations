def negative(number)
  number <= 0 ? number : number * -1
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0
