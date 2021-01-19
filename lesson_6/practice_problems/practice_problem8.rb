hsh = {
	first: ['the', 'quick'], second: ['brown', 'fox'], 
	third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']
}

vowels = %w(a e i o u)

hsh.each do |_, strings|
	strings.each do |string| 
		string.chars.each do |char| 
			puts char if vowels.include?(char.downcase)
		end
  end 
end