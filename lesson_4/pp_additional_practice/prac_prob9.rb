words = "the flintstones rock"

def titlize(title)
  title.split.map { |word| word.capitalize }.join(' ')
end

p titlize(words)
