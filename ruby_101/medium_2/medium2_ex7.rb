require 'Date'

def friday_13th(year)
  num_fri_thirteens = 0
  (1..12).each do |month|
    if Date.new(year, month, 13).cwday == 5
      num_fri_thirteens += 1
    end
  end
  num_fri_thirteens
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
