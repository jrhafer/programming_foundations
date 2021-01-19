def acsii_value(words)
  ascii_total = 0
  words.chars.each { |char| ascii_total += char.ord }
  ascii_total
end

p acsii_value('Four score') == 984
p acsii_value('Launch School') == 1251
p acsii_value('a') == 97
p acsii_value('') == 0
