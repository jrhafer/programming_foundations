def fizzbuzz(int_1, int_2)
  resluts = (int_1..int_2).to_a.map do |num|
    if num % 3 == 0 && num % 5 == 0 then num = 'FizzBuzz'
    elsif num % 3 == 0 then num = "Fizz"
    elsif num % 5 == 0 then num = "Buzz"
    else num
    end
  end
  puts resluts.join(', ')
end

fizzbuzz(1, 15)
