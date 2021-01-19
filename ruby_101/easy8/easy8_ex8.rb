def double_consonants(string)
  consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
  results = ''
  string.chars.each do |char|
    if consonants.include?(char.downcase) then results << char * 2
    else results << char
    end
  end
  results
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
