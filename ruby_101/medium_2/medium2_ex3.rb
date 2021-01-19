UPCASE = ('A'..'Z').to_a
DOWNCASE = ('a'..'z').to_a

def letter_percentages(string)
  results = Hash.new(0)
  up = string.chars.count { |char| UPCASE.include?(char) }
  down = string.chars.count { |char| DOWNCASE.include?(char) }
  none = (string.size - up - down)
  results[:lowercase] = down.to_f / string.size * 100
  results[:uppercase] = up.to_f / string.size * 100
  results[:neither] = none.to_f / string.size * 100
  results
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

