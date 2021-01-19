NUM_NAME_TO_DIGIT = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def word_to_digit(text)
  text.split.map do |word|
    if word.include?('.') && NUM_NAME_TO_DIGIT.has_key?(word[0..-2])
      NUM_NAME_TO_DIGIT[word[0..-2]] + word[-1]
    elsif NUM_NAME_TO_DIGIT.include?(word)
      NUM_NAME_TO_DIGIT[word]
    else
      word
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')\
 == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
