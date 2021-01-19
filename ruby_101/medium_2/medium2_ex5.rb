
def triangle(side_a, side_b, side_c)
  tri = [side_a, side_b, side_c].sort
  case
  when tri.include?(0) || (tri[0] + tri[1]) < tri[2]
    :invalid
  when tri.uniq.count == 1
    :equilateral
  when tri.uniq.count == 3
    :scalene
  when tri.uniq.count == 2
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
