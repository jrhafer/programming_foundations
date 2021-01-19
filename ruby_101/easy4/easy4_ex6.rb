
def running_total(number_list)
  results = []
  accumlation = 0
  number_list.each do |num|
    accumlation += num
    results << accumlation
  end
  results
end

# Further Exploration

def running_total(number_list)
  sum = 0
  number_list.each_with_object([]) do |num, array|
    array << sum + num
    sum += num
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
