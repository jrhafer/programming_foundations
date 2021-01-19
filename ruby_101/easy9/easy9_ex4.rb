
def sequence(num)
  (1..num).to_a
end

#further exploration

def sequence(num)
  num <= 0 ? (num..0).to_a : (1..num).to_a
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
sequence(-10) == [-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0]
