def word_sizes(text)
  text_hash = {}
  text_words = text.chars.delete_if { |char| !(('a'..'z').to_a << ' ').include?\
    (char.downcase)}.join.split
  text_words.each { |word| text_hash[word.size] = 0 }
  text_words.each do |word|
    text_hash.map do |key, value|
      if word.size == key
        text_hash[key] += 1
      end
    end
  end
  text_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
