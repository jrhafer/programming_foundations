DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
}

def string_to_integer(str_num)
  integers = str_num.chars.map { |char| char = DIGITS[char] }.reverse
  integers.each_with_index.map { |num, power| num * 10**power }.sum
end

def string_to_signed_integer(str_num)
  if str_num[0] == '-'
    -string_to_integer(str_num[1..-1])
  elsif str_num[0] == '+'
    string_to_integer(str_num[1..-1])
  else
    string_to_integer(str_num)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
