UPPERCASE_LETTERS = ('A'..'Z').to_a
LOWERCASE_LETTERS = ('a'..'z').to_a

def letter_case_count(text)
  text_count = { lowercase: 0, uppercase: 0, neither: 0 }
  text.chars.each do |char|
    if LOWERCASE_LETTERS.include?(char)
      text_count[:lowercase] += 1
    elsif UPPERCASE_LETTERS.include?(char)
      text_count[:uppercase] += 1
    else
      text_count[:neither] += 1
    end
  end
  text_count
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
