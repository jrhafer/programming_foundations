def century(year)
  century = year / 100
  year % 100 == 0 ? century : century += 1
  century = century.to_s
  century + century_suffix(century)
end

def century_suffix(century)
  return 'th' if ['11', '12', '13'].include?(century[-2, 2])
  case century[-1]
  when '1' then 'st'
  when '2' then 'nd'
  when '3' then 'rd'
  else 'th'
  end
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
