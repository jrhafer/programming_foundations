def display_str_chars(string)
  puts "There are #{string.split.join.length} characters in \"#{string}\"."
end

def retrieve_string
  print "Please write word or multiple words: "
  display_str_chars(gets.chomp)
end

retrieve_string
