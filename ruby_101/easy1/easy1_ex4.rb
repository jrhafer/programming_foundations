vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  list = {}
  array.each do |list_item|
    list[list_item] = array.count(list_item)
  end
  list.each do |item, count|
    puts "#{item} => #{count}"
  end
end


count_occurrences(vehicles)
