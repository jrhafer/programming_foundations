def mad_libs
  hash = {'noun' => nil, 'verb' => nil, 'adjective' => nil, 'adverb' => nil}
  hash.each do |key, value|
    puts "Enter a #{key}:"
    hash[key] = gets.chomp
  end
  puts "Do you #{hash['verb']} your #{hash['adjective']} #{hash['noun']}\
 #{hash['adverb']}? That's Hilarious!"
end

mad_libs
