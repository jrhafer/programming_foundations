def swapcase(phrase)
  phrase.chars.map do |char|
    if char == char.upcase
      char.downcase
    elsif char == char.downcase
      char.upcase
    else
      char
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
