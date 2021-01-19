
def product_of_row(row)
  array = []
  row.times { |num| array << num + 1 }
  array.sum
end

p product_of_row(10)
