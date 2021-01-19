def triangle(int1, int2, int3)
  array = [int1, int2, int3].sort
  return :invalid if array.sum < 180 || array.include?(0)
  return :right if array.include?(90)
  return :acute if array.last < 90
  return :obtuse if array.last > 90
end



p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
