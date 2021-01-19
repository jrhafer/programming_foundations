def generate_UUID
  characters = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
  sections = [8, 13, 18, 23]
  uuid = ''
  36.times { uuid << characters.sample }
  sections.each do |section|
    uuid[section] = '-'
  end
  uuid
end

p generate_UUID

# def generate_UUID
#   characters = ('0'..'9').to_a
#   characters += %w(a b c d e f)
#   sections = [8, 4, 4, 4, 12]
#   uuid = ''
#   sections.each do |section|
#     section.times { uuid << characters.sample }
#     unless section == 12
#       uuid << '-'
#     end
#   end
#   uuid
# end
# p generate_UUID

# "ba41a851-26b5-f875-2081-2cc37058b1ca"
# "aee8b12c-0fe1-c591-26db-91e010b62ad0"
