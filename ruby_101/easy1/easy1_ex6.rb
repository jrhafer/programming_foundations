def reverse_words(string)
  words = []
  string.split.each do |word|
    word.size >= 5 ? words << word.reverse : words << word
  end
  words.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
