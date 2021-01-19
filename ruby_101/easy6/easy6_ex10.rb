def triangle(num)
  mult = 1
  while mult <= num
    puts " " * (num - mult) + "*" * mult
    mult += 1
  end
end

# Further Exploration

# variables in LaunchSchool answer are clearly and appropriately
# named

def triangle(num)
  spaces = 0
  stars = num

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
