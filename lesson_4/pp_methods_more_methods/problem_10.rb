[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# typically a new array is returned with the elements that evaluate true in the
# block, but the puts for numbers > 1 returns nil b/c puts always returns nil.
# the number one is returned b/c variable num is returned without a puts
