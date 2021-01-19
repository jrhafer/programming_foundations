def staggered_case(phrase)
  staggered_phrase = ''
  characters = phrase.chars
  characters.each_with_index do |letter, idx|
    if idx.even?
      staggered_phrase << letter.upcase
    else
      staggered_phrase << letter.downcase
    end
  end
  staggered_phrase
end

# Further Exploration

# LaunchSchool method uses toggling to change boolean back and forth
# between true and false

def staggered_case(string, upcase = 'first')
  result = ''
  if upcase == 'first'
    need_upper = true
  elsif upcase == 'second'
    need_upper = false
  end
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!', 'first') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', 'second') #== 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 NuMbErS'
