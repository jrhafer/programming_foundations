text = File.read('gettysburg.txt')

def display_longest_sentence_and_length(number_of_words, sentences)
  number_of_words.sort!
  sentences.sort_by! { |sentence| sentence.size }
  puts "The longest sentence is \"#{sentences[-1]}\" with\
   #{number_of_words[-1]} words in it."
end

def longest_sentence(text)
  number_of_words = []
  sentences = []
  current_sentence = []
  array_of_text = text.split(' ')
  array_of_text.each do |word|
    current_sentence << word
    if word.include?('.') || word.include?('?') || word.include?('!')
      number_of_words << current_sentence.size
      sentences << current_sentence.join(' ')
      current_sentence = []
    end
  end
  display_longest_sentence_and_length(number_of_words, sentences)
end

longest_sentence(text)
