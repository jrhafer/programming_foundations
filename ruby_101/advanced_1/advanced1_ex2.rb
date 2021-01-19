def top_star(num)
  left = 0
  right = -1
  until left > num / 2 - 1
    string = ' ' * num
    string[num/2], string[left], string[right] = '*', '*', '*'
    puts string
    left += 1
    right -= 1
  end
end

def bottom_star(num)
  left = num / 2 - 1
  right = num / 2 + 1
  until left < 0
    string = ' ' * num
    string[left], string[num / 2], string[right] = "*", '*', '*'
    puts string
    left -= 1
    right += 1
  end
end

def star(num)
  top_star(num)
  puts '*' * num # middle stars
  bottom_star(num)
end

star(9)
