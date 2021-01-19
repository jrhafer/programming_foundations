def top_diamond(num)
  (1..num).each do |mult|
    next if mult.even?
    puts ("*" * mult).center(num)
  end
end

def bottom_diamond(num)
  ((-num + 2)..-1).each do |mult|
    next if mult.even?
    puts ("*" * mult.abs).center(num)
  end
end

def diamond(num)
  top_diamond(num)
  bottom_diamond(num)
end

diamond(3)

diamond(9)

# Further Exploration

# def hollow_diamond_top(num)
#   middle = num / 2
#   l_side, r_side = 1, 1
#   puts "*".center(num)
#   while l_side <= middle
#     puts " " * (middle - l_side) + "*" + " " * r_side + "*"
#     l_side += 1
#     r_side += 2
#   end
# end

# hollow_diamond_top(9)

## hollow diamond bottom ##
