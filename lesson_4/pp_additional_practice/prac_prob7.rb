statement = "The Flintstones Rock"
statement_hash = {}

array = statement.split.join.chars

array.each do |letter|
  statement_hash[letter] = array.count(letter)
end

p statement_hash
