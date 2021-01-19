flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, idx|
  if name.include?("Be")
    puts idx
  end
end
