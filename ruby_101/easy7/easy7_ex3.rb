def word_cap(phrase)
  phrase.split.map(&:capitalize).join(' ')
end

# Further Exploration

def word_cap(phrase)
  phrase.split.map { |word| word = word[0].upcase + word.slice(1, word.size)\
    .downcase }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
