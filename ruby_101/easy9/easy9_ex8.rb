#input => 2 integers - 1st is count and 2nd is first number in sequence
#output => multiples of second number up to 1st number digits

def sequence(int_1, int_2)
  (1..int_1).map { |num| num * int_2 }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
