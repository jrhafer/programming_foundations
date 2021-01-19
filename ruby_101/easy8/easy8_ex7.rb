def repeater(string)
  string.split('').map { |letter| letter * 2 }.join('')
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
