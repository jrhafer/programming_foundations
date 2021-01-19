
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def int_combine(num_list)
  result = 0
  num_list.each do |num|
    result = 10 * result + num
  end
  result
end

def string_to_integer(string_num)
  num_list = string_num.chars.map do |num|
    num = DIGITS[num]
  end
  int_combine(num_list)
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

HEXADECIMAL = {
  '0'=> 0, '1'=> 1, '2'=> 2, '3' => 3, '4'=> 4, '5'=> 5, '6'=> 6,
  '7'=> 7, '8'=> 8, '9'=> 9, 'A'=> 10, 'B'=> 11, 'C'=> 12, 'D'=> 13,
  'E'=> 14, 'F'=> 15
}

# Further Exploration

def hexadecimal_to_integer(string_num)
  num_list = string_num.chars.map do |num|
    num = HEXADECIMAL[num.upcase]
  end
  hex_to_dec(num_list)
end

def hex_to_dec(array)
  results = 0
  power = (array.size - 1)
  idx = 0
  loop do
    results += array[idx] * 16**power
    idx += 1
    power -= 1
    break if idx == array.size
  end
    results
end

p hexadecimal_to_integer('4D9f') == 19871
