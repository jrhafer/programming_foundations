def greetings(name, titles)
  puts "Hello #{name.join(' ')}! Nice to have a #{titles[:title]} #{titles[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

# => Hello, John Q Doe! Nice to have a Master Plumber around.

# Futher Exploration

def greetings(name, titles)
  name = name.join(' ')
  title = titles[:title] + ' ' + titles[:occupation]
  puts "Hello #{name}! Nice to have a #{title} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
