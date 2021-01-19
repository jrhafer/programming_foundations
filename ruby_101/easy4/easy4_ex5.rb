def multisum(num)
  results = (1..num).to_a.select { |dig| dig % 3 == 0 || dig % 5 == 0 }
  results.inject { |sum, num| sum + num }
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
