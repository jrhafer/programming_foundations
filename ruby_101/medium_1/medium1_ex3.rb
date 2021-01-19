def max_rotation(num)
  rotated_num = num.to_s.chars
  index_count = rotated_num.size - 1
  index_count.times do |idx|
    last_num = rotated_num.delete_at(idx)
    rotated_num << last_num
  end
  rotated_num.join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
