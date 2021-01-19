DAY_IN_MINUTES = 1440

def time_of_day(number)
  number = number % DAY_IN_MINUTES
  hour, minutes = number.divmod(60)
  format('%02d:%02d', hour, minutes)
  end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"


# Further Exploration
#
# def time_of_day(number)
#
# end
#
# time_of_day(-4231) == "Thursday 01:29"
