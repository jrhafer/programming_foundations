def cleanup(string)
  letters = ('a'..'z').to_a
  result = []
  string.chars.each do |char|
    if letters.include?(char)
      result << char
    else
      result << " " unless result.last == ' '
    end
  end
  result.join
end

p cleanup("---what's my +*& line?") == ' what s my line '
