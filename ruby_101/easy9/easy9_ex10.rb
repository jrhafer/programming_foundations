def buy_fruit(produce_list)
  produce_list.map { |array| [array[0]] * array[1] }.flatten
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
